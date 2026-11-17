<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Berita extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * Get all of the penulis for the Berita
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function penulis()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    /**
     * Get all of the kategori for the Berita
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function kategori()
    {
        return $this->belongsTo(Kategori::class, 'kategori_id', 'id');
    }
}
