@extends('partials.layout')

@section('title', 'Crear-Pokemons')

@section('content')

    <div class="container">
        <h1>Crear Pokemons</h1>
        <div id="mensaje"></div>
        <form id="formPokemon" class="form-horizontal" method="POST" action="{{route('insertarPokemon')}}">
            @csrf
            <div class="mb-3">
                <label for="namePokemon" class="form-label">Name</label>
                <input type="text" class="form-control" name="name" placeholder="Name" value="{{old ('name')}}">
            </div>
            <div class="mb-3">
                <label for="urlPokemon" class="form-label">URL</label>
                <input type="url" class="form-control" name="url" placeholder="URL" value="{{old ('url')}}">
            </div>
        </form>

        <a id="btnGuardar" class="btn btn-primary">Save</a>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="{{asset ('/js/pokemones.js')}}"></script>
@endsection
