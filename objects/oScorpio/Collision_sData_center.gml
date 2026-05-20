// Destrói o Datacenter
with (other)
{
    instance_destroy();
}

// Mensagem final
show_message("Datacenter destruído!");

// Finaliza o jogo
room_goto(rFase3);