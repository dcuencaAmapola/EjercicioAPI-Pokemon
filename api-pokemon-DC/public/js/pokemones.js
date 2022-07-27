

$('#btnGuardar').click(function(event) {

    var form = $('#formPokemon');
    $.ajax({
        type: 'POST',
        url: '/insertarPokemon',
        data: form.serialize(),
        success: function(response) {
            window.location.href = '/pokemons/indexDB';
        },
        error: function(response) {
            console.log(response);
            document.getElementById('mensaje').innerHTML = 'Campos invalidos o ese pokemon ya existe en la BD';
        }
    });

});
