<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class EmailForQueue extends Mailable
{
    use Queueable, SerializesModels;
    protected $title;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($title)
    {
        $this->title=$title;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('nicolas530@gmail','nicolas')
                    ->subject($this->title)
                    ->view('emails.title')
                    ->with([//aca va la data hacia la vista
                        'title'=>$this->title    
                    ]);
    }
}
