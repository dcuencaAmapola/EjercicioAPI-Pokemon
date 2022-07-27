@extends('partials.layout')

@section('title', 'Home-Pokemons')

@section('content')

    <div class="container">
        <h1>Pokemons</h1>
        <a class="btn btn-success" href="{{ route('indexDB') }}">DB</a>
        <table class="table table-striped">
            <thead>
                <th scope="col">Name</th>
                <th scope="col">URL</th>
            </thead>
            <tbody>
                @foreach ($pokemons as $pokemonItem)
                <tr>
                    <td>{{$pokemonItem['name']}}</td>
                    <td>
                        @php
                            $explode = explode('/',$pokemonItem['url']);
                            $idPokemon = $explode[6];
                        @endphp
                        <a href="{{route ('verPokemon', $idPokemon)}}">{{$pokemonItem['url']}}</a>

                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
