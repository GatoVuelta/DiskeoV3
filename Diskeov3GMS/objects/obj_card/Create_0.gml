selected = false;
txt = choose("");

empty_Asset = false;
iread = false;

asset_sprite_exists = false;
spr_id = -1;
hover = false;

global.card_icount += 1;
c_count = global.card_icount;

////Columna
//columna = c_count/9;
//if (columna <= 1){columna = 1} else
//if (columna <= 2){columna = 2} else	
//if (columna <= 3){columna = 3} else
//if (columna <= 4){columna = 4} else	
//if (columna <= 5){columna = 5} else	
//if (columna <= 6){columna = 6}

////Fila
//fila = c_count - (9*(columna-1))

asset_sprite_this = sprite_index;

if (c_count > 50)
{
	instance_destroy();
}