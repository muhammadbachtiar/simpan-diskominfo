<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BeritaResource\Pages;
use App\Filament\Resources\BeritaResource\RelationManagers;
use App\Models\Berita;
use App\Models\Kategori;
use Faker\Provider\ar_EG\Text;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;
use Mohamedsabil83\FilamentFormsTinyeditor\Components\TinyEditor;
use Illuminate\Support\Str;

class BeritaResource extends Resource
{
    protected static ?string $model = Berita::class;

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    protected static ?string $navigationGroup = 'Konten';

    protected static ?string $navigationLabel = 'Berita';

    public static function getEloquentQuery(): Builder
    {
        return static::getModel()::query()->orderBy('tanggal', 'DESC');
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make([
                    Hidden::make('user_id')->default(\auth()->id()),

                    FileUpload::make('path')
                        ->label('Thumbnail')
                        ->image()
                        ->imageResizeMode('cover')
                        ->imageResizeTargetWidth('1280')
                        ->imageResizeTargetHeight('720'),

                    TextInput::make('judul')
                        ->placeholder('Contoh : Kegiatan hari ini adalah')
                        ->reactive()
                        ->afterStateUpdated(fn ($state, callable $set) => $set('slug', Str::slug($state)))
                        ->rules(['required', 'max:100']),

                    TextInput::make('slug')->disabled(),

                    DatePicker::make('tanggal')->label('Tanggal Terbit'),

                    TinyEditor::make('isi')
                        ->label('Isi Berita')
                        ->placeholder('Kosongkan Jika Menu Memiliki Sub Menu')
                        ->minHeight(400)
                        ->setRelativeUrls(false),

                    Select::make('kategori_id')
                        ->options(Kategori::all()->pluck('nama', 'id'))
                        ->searchable()
                        ->label('Kategori'),

                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('path')->circular()->size(50),
                TextColumn::make('judul')->limit(20)->searchable(),
                TextColumn::make('kategori.nama')->searchable(),
                TextColumn::make('penulis.name')->label('Penulis'),
                TextColumn::make('tanggal')->date(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                DeleteAction::make(),
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
            'index' => Pages\ListBeritas::route('/'),
            'create' => Pages\CreateBerita::route('/create'),
            'edit' => Pages\EditBerita::route('/{record}/edit'),
        ];
    }
}
