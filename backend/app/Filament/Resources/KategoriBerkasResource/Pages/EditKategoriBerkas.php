<?php

namespace App\Filament\Resources\KategoriBerkasResource\Pages;

use App\Filament\Resources\KategoriBerkasResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditKategoriBerkas extends EditRecord
{
    protected static string $resource = KategoriBerkasResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
