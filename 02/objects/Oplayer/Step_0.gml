 //Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) ;

if (key_left) || (key_right) || (key_jump)
{
controller = 0;
}

if (abs (gamepad_axis_value(0,gp_axislh)) > 0.2)
{
	
key_left = abs (min(gamepad_axis_value(0,gp_axislh),0));
key_right = max (gamepad_axis_value (0,gp_axislh),0);
controller = 1;
}

if (gamepad_button_check_pressed (0, gp_face1))
{
	key_jump = 1;
	controller = 1;
}
  



// Calculate Movement
var move = key_right - key_left;

hsp = move * walkspd; 

vsp = vsp + grv;

if (place_meeting(x,y+1,Owall)) && (key_jump)
{
	vsp = -13;
}

// HORIZONTAL COLLECTION
// Horizontal Colition
// horizontal speed
// x = coordinate



if (place_meeting(x+hsp,y,Owall))
{
	while (!place_meeting(x+sign(hsp),y,Owall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		x = x + sign(hsp);	}
	hsp = 0;
}
x = x + hsp;

// VERTICAL COLLECTION

if (place_meeting(x,y+vsp,Owall))
{
	while (!place_meeting(x,y+sign(vsp),Owall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		y = y + sign(vsp);	}
	vsp = 0;
}
y = y + vsp;



//Animation
if (!place_meeting (x,y+1,Owall))
{
	sprite_index = Splayerjump;
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1; else image_index = 0; 
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Splayer;
	}
	else
	{
		sprite_index = Splayermove;
	}
}


if (hsp != 0) image_xscale = sign(hsp);