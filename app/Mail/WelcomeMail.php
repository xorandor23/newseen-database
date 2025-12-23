<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use App\Models\User;

class WelcomeMail extends Mailable
{
    use Queueable, SerializesModels;

    public $user; // Definisikan variabel use
    public $url;
    public function __construct($user, $url)
    {
        $this->user = $user;
        $this->url = $url;
    }
    public function build()
    {
        return $this->subject('Welcome to Newseen' . config('app.name'))
            ->view('welcome'); // Nama file template blade Anda
    }
}
