<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SubmenuResource\Pages;
use App\Filament\Resources\SubmenuResource\RelationManagers;
use App\Models\Navigation;
use App\Models\Submenu;
use Closure;
use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\Layout;
use Filament\Pages\Actions\DeleteAction;
use Filament\Tables\Actions\DeleteAction as ActionsDeleteAction;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Mohamedsabil83\FilamentFormsTinyeditor\Components\TinyEditor;
use Illuminate\Support\Str;

class SubmenuResource extends Resource
{
    protected static ?string $model = Submenu::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    protected static ?string $navigationGroup = 'Navigasi';

    protected static ?string $navigationLabel = 'Sub Menu';

    public static function getEloquentQuery(): Builder
    {
        return static::getModel()::query()->where('parent_id', '!=', NULL);
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()->schema([
                    Select::make('status_menu')
                        ->options([
                            'Ada' => 'Ada Sub Menu',
                        ])
                        ->default('Ada')
                        ->disablePlaceholderSelection()
                        ->reactive(),

                    Select::make('parent_id')
                        ->options(function (callable $get) {
                            $nav = Navigation::all()->where('parent_id', '==', NULL);

                            return $nav->pluck('nama_menu', 'id');
                        })
                        ->label('Sub Menu')
                        ->hidden(fn (Closure $get) => $get('status_menu') == 'Tidak Ada')
                        ->rules(['required']),

                    TextInput::make('nama_menu')->placeholder('Contoh : Profil')->reactive()
                        ->afterStateUpdated(fn ($state, callable $set) => $set('slug', Str::slug($state)))
                        ->rules(['required', 'max:20']),

                    TextInput::make('slug')->disabled(),

                    TinyEditor::make('keterangan')
                    ->label('Isi Konten')
                    ->placeholder('Kosongkan Jika Menu Memiliki Sub Menu')
                    ->minHeight(400)
                    ->setRelativeUrls(false),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama_menu')->searchable(),
                TextColumn::make('menu.nama_menu')->label('Menu Induk'),
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
            'index' => Pages\ListSubmenus::route('/'),
            'create' => Pages\CreateSubmenu::route('/create'),
            'edit' => Pages\EditSubmenu::route('/{record}/edit'),
        ];
    }
}
