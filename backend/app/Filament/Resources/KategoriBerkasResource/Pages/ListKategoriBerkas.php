<?php

namespace App\Filament\Resources\KategoriBerkasResource\Pages;

use App\Filament\Resources\KategoriBerkasResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListKategoriBerkas extends ListRecords
{
    protected static string $resource = KategoriBerkasResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
