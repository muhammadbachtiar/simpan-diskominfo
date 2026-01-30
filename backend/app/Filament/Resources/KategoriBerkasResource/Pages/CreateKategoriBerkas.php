<?php

namespace App\Filament\Resources\KategoriBerkasResource\Pages;

use App\Filament\Resources\KategoriBerkasResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateKategoriBerkas extends CreateRecord
{
    protected static string $resource = KategoriBerkasResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
