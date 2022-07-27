<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;
use App\Models\Pokemon;
use Illuminate\Http\Request;

class PokemonsController extends Controller
{
    public $url;

    public function __construct(){
        $this->url = 'https://pokeapi.co/api/v2/pokemon';
    }

    public function index(){
        $pokemon = Http::get('https://pokeapi.co/api/v2/pokemon?limit=30&offset=0');
        $json_pokemons = json_decode($pokemon, true);
        $pokemons = $json_pokemons['results'];
        return view('pokemons/index', compact('pokemons'));
    }

    public function indexDB(){
        $pokemonDB = Pokemon::get();
        return view('pokemonsDB/indexDB', compact('pokemonDB'));
    }

    public function postPokemons(Request $request){
        $pokemon = Http::get('https://pokeapi.co/api/v2/pokemon?limit=30&offset=0');
        $json_pokemons = json_decode($pokemon, true);
        $pokemons = $json_pokemons['results'];

        foreach ($pokemons as $pokemon){
            $guardar = new Pokemon;
            $guardar->name = $pokemon['name'];
            $guardar->url = $pokemon['url'];
            $guardar->save();
        }
    }

    public function getPokemonID($id){
        $pokemon = Pokemon::find($id);
        if(is_null($pokemon)){
            return response()->json(['Mensaje'=>'Registro no Encontrado'], 404);
        }
        return response()->json($pokemon::find($id), 200);
    }

    public function crearPokemonView(){
        return view('pokemons/crearPokemon');
    }

    public function mensajeView(){
        return view('mensaje');
    }

    public function insertPokemon(Request $request){
        //return $request['name'];
        $request->validate([
            'name' => 'required|unique:pokemon',
            'url' => 'required',
        ]);
        $guardar = new Pokemon;
        $guardar->name = $request['name'];
        $guardar->url = $request['url'];
        $guardar->save();
        return view('mensaje');
    }

    public function seePokemon($id){
        $endPoint = $this->url.'/'.$id;
        $pokemon = Http::get($endPoint);
        $json_pokemons = json_decode($pokemon, true);
        $json_pokemons;
        return view('pokemons/verPokemon', compact('json_pokemons'));
    }

}
