@extends('partials.layout')

@section('title', 'PokemonName-Pokemons')

@section('content')

    <div class="container">
        <br />
        <div class="card" style="width: 20rem;">
            <h1 stylE="text-align: center">{{ ucwords($json_pokemons['name']) }}</h1>
            <img src="{{ $json_pokemons['sprites']['front_default'] }}" class="card-img-top" alt="...">
            <div class="card-body">
                <li class="list-group-item">Height: {{ $json_pokemons['height'] }}</li>
                <li class="list-group-item">Weight: {{ $json_pokemons['weight'] }}</li>
                <a class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Abilities</h5>
                    </div>
                    @foreach ($json_pokemons['abilities'] as $item)
                        <li class="mb-1">{{ucwords( $item['ability']['name'])}}</li>
                    @endforeach
                </a>
                <a class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Types</h5>
                    </div>
                    @foreach ($json_pokemons['types'] as $item)
                        <li class="mb-1">{{ucwords($item['type']['name'])}}</li>
                    @endforeach
                </a>
                <a class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Moves</h5>
                    </div>
                    @foreach ($json_pokemons['moves'] as $item)
                        <li class="mb-1">{{ucwords($item['move']['name'])}}</li>
                    @endforeach
                </a>
                <a class="btn btn-success" href="{{ route('index') }}">Back</a>
            </div>
        </div>
    </div>
@endsection
