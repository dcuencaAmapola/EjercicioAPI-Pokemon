@extends('partials.layout')

@section('title', 'DB-Pokemons')

@section('content')

    <div class="container">
        <h1> ** Pokemons DB ** </h1>

        <div>
            <a class="btn btn-success" href="{{route('index')}}">API</a>
            <a class="btn btn-primary" href="/pokemons/crearPokemon">Create</a>
        </div>
        <table class="table table-striped">
            <thead>
                <th scope="col">Name</th>
                <th scope="col">URL</th>
            </thead>
            <tbody>
                @foreach ($pokemonDB as $pokemonItem)
                <tr>
                    <td>{{$pokemonItem['name']}}</td>
                    <td>
                        <a href="#">{{$pokemonItem['url']}}</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>

    </div>
@endsection
