if (done == 0)
{
	vsp = vsp + grv;

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
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1;
			}
		while (!place_meeting(x,y+sign(vsp),Owall))
		// iterasi sampai kondisi terpenuhi kalau eror freze
		{
			y = y + sign(vsp);	}
		vsp = 0;
	}
	y = y + vsp;


}