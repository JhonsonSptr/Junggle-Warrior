vsp = vsp + grv;

if (place_meeting(x+hsp,y,Owall))
{
	while (!place_meeting(x+sign(hsp),y,Owall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		x = x + sign(hsp);	}
	hsp = -hsp;
}
x = x + hsp;

// VERTICAL COLLECTION

if (place_meeting(x,y+vsp,Owall))
{
	while (!place_meeting(x,y+sign(vsp),Owall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		y = y + sign(vsp);	}
	vsp =0;
}
y = y + vsp;



//Animation
if (!place_meeting (x,y+1,Owall))
{
	sprite_index = SenemiesJump;
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1; else image_index = 0; 
}
else
{
	image_speed = 1.5;
	if (hsp == 0)
	{
		sprite_index = Senemies;
	}
	else
	{
		sprite_index = SenemiesMove;
	}
}


if (hsp != 0) image_xscale = sign(hsp);