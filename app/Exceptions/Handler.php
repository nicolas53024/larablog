<?php

namespace App\Exceptions;

use Throwable;
use App\Traits\ApiResponse;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{

    use ApiResponse;
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     *
     * @throws \Exception
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Exception
     */
    public function render($request, Throwable $exception)
    {


        
        /* dd($exception);   */

        if (env('APP_ENV')=='prod' || !Str::contains($request->path(),'api')) {//APP_ENV nos retorna el tipo de ambiente, en este caso validamos si esta en local, en caso de produccion las excp retornan un json
            return parent::render($request, $exception);
        }
        

        if ($exception instanceof  NotFoundHttpException) {//valida si la $excepcion es una instancia del tipo de error encontrado

            return response()->json(array("data"=>"Pagina no encontrada","code"=>404,"msj"=>"Pagina no encontrada"),404);
        }

        if ($exception instanceof  ModelNotFoundException ) {//valida si la $excepcion es una instancia del tipo de error encontrado

            return response()->json(array("data"=>"Recurso no encontrado","code"=>404,"msj"=>"Recurso no encontrado"),404);
        }

        /* return parent::render($request, $exception); */
    }
}
