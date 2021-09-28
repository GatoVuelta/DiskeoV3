window_command_hook(window_command_minimize);

//Habilitar o no
element_enable = true;

if (os_type == os_linux)
{
	element_enable = false;
}