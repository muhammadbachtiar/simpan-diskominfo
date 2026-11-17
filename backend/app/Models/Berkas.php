<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Berkas extends Model
{
    use HasFactory, SoftDeletes;

    public function kategoriBerkas()
    {
        return $this->belongsTo(KategoriBerkas::class, 'kategori_berkas_id', 'id');
    }
}
