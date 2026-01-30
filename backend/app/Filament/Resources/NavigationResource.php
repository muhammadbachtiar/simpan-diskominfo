<?php

namespace App\Filament\Resources;

use App\Filament\Resources\NavigationResource\Pages;
use App\Filament\Resources\NavigationResource\RelationManagers;
use App\Models\Navigation;
use Closure;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Pages\Actions\DeleteAction;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Filament\Tables\Actions\DeleteAction as ActionsDeleteAction;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Mohamedsabil83\FilamentFormsTinyeditor\Components\TinyEditor;
use Illuminate\Support\Str;
use Filament\Tables\Filters\Layout;

class NavigationResource extends Resource
{
    use InteractsWithForms;

    protected static ?string $model = Navigation::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    protected static ?string $navigationGroup = 'Navigasi';

    protected static ?string $navigationLabel = 'Menu';

    public static function getEloquentQuery(): Builder
    {
        return static::getModel()::query()->where('parent_id', NULL);
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Select::make('status_menu')
                        ->options([
                            'Tidak Ada' => 'Tidak Ada Sub Menu',
                            'Ada' => 'Ada Sub Menu',
                        ])
                        ->default('Tidak Ada')
                        ->disablePlaceholderSelection()
                        ->reactive(),

                    Select::make('parent_id')
                        ->options(function (callable $get) {
                            $nav = Navigation::all()->where('parent_id', '==', NULL);

                            return $nav->pluck('nama_menu', 'id');
                        })
                        ->label('Sub Menu')
                        ->hidden(fn (Closure $get) => $get('status_menu') == 'Tidak Ada'),

                    TextInput::make('nama_menu')->placeholder('Contoh : Profil')->reactive()
                        ->afterStateUpdated(fn ($state, callable $set) => $set('slug', Str::slug($state)))
                        ->rules(['required', 'max:20']),

                    TextInput::make('slug')->disabled(),

                    TinyEditor::make('keterangan')
                        ->label('Isi Konten')
                        ->placeholder('Kosongkan Jika Menu Memiliki Sub Menu')
                        ->minHeight(400)
                        ->setRelativeUrls(false)
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama_menu')->searchable(),
                TextColumn::make('submenu.nama_menu'),
            ])
            ->filters([
                //
            ], layout: Layout::AboveContent,)
            ->actions([
                Tables\Actions\EditAction::make(),
                ActionsDeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNavigations::route('/'),
            'create' => Pages\CreateNavigation::route('/create'),
            'edit' => Pages\EditNavigation::route('/{record}/edit'),
        ];
    }
}
