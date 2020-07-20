<?php

namespace App\Http\Controllers\dashboard;

use App\Contact;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'rol.admin']); //metodo para acceder a las rutas de posts, solo cuando este logueado
    }

    public function index()
    {
        //
        setlocale(LC_ALL, 'es_NY');
        Carbon::setUtf8(true);
        Carbon::setLocale('es');

        $contacts = Contact::orderBy('id', 'asc')->paginate(8);
        //dd($posts->all());
        return \view('dashboard.contact.index', ['contacts' => $contacts]);
    }

    public function show($id)
    {
        setlocale(LC_ALL, 'es_NY');
        Carbon::setUtf8(true);
        Carbon::setLocale('es');
        //findOrFail=si no encuentra id devuelve un 404
        $contact = Contact::findOrFail($id);
        return \view('dashboard.contact.show', ['contact' => $contact]);
       
    }

    public function destroy($id)
    {
        Contact::destroy($id);
        return back()->with('status', 'Contacto eliminado');
    }
}
