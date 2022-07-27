<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'App\Http\Controllers\PokemonsController@index')-> name('index');

Route::get('pokemons/indexDB', 'App\Http\Controllers\PokemonsController@indexDB')-> name('indexDB');

Route::get('pokemons/verPokemon/{id}', 'App\Http\Controllers\PokemonsController@seePokemon')-> name('verPokemon');

Route::get('postPokemons','App\Http\Controllers\PokemonsController@postPokemons');

Route::get('pokemon/{id}','App\Http\Controllers\PokemonsController@getPokemonID');

Route::get('pokemons/crearPokemon','App\Http\Controllers\PokemonsController@crearPokemonView');

Route::post('insertarPokemon','App\Http\Controllers\PokemonsController@insertPokemon') -> name('insertarPokemon');

Route::get('mensaje','App\Http\Controllers\PokemonsController@mensajeView') -> name('mensajeView');
