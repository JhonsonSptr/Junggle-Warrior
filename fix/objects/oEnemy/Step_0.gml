vsp = vsp + grv;
// HORIZONTAL COLLECTION
// Horizontal Colition
// horizontal speed
// x = coordinate
if (grounded && afraidofheights && !place_meeting(x + hsp + sprite_width, y + 1, oWall))

{

 hsp = -hsp;

}


if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		x = x + sign(hsp);	
	}
	hsp = -hsp;
}
x = x + hsp;

// VERTICAL COLLECTION

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	// iterasi sampai kondisi terpenuhi kalau eror freze
	{
		y = y + sign(vsp);	}
	vsp = 0;
}
y = y + vsp;

//animation

if (!place_meeting (x,y+1,oWall))
{
	grounded = false;
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1; else image_index = 0; 
}
else
{
	grounded =true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyRun;
	}
}


if(hsp !=0) image_xscale =sign(hsp)*size;
image_yscale =size;