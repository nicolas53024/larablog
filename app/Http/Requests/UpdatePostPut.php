<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePostPut extends FormRequest
{

    public function messages(){//aca se deben definir los mensajes y se enlazan con el array messages de la carpeta lang
        return [
            'title.required' => __('messages.requerido'),
        ];
    }
    /* public function messages()//aca se deben definir los mensajes de erro personalizados, 

    {
        return [
            'title.required' => 'No puedes modificar el post sin ingresar un título',
        ];
    } */
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */


    public function authorize()
    {
        //se debe autorizar la transaccion, por defecto viene false

        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|min:5|max:500',
            'url_clean' => 'max:500|unique:posts,url_clean,' . $this->route('post')->id, //mantiene la misma url anterior para poder modificar sin que genere conflicto en el unique
            'content' => 'required|min:5|max:5000',
            'category_id' => 'required',
            'posted' => 'required',
            'tags_id' => 'required'



        ];
    }
}
