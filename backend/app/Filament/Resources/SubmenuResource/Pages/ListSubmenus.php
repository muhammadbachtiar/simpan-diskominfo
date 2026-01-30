<?php

namespace App\Filament\Resources\SubmenuResource\Pages;

use App\Filament\Resources\SubmenuResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSubmenus extends ListRecords
{
    protected static string $resource = SubmenuResource::class;

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
