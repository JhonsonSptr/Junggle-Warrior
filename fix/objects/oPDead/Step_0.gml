if(done==0){
	vsp = vsp + grv;
	// HORIZONTAL COLLECTION
	// Horizontal Colition
	// horizontal speed
	// x = coordinate



	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		// iterasi sampai kondisi terpenuhi kalau eror freze
		{
			x = x + sign(hsp);	
		}
		hsp = 0;
	}
	x = x + hsp;

	// VERTICAL COLLECTION

	if (place_meeting(x,y+vsp,oWall))
	{
		if(vsp>0)
			{
			done = 1;
			image_index=1;
			alarm[0]=60;
			}
		while (!place_meeting(x,y+sign(vsp),oWall))
		// iterasi sampai kondisi terpenuhi kalau eror freze
		{
			y = y + sign(vsp);	}
		vsp = 0;
	}
	y = y + vsp;

}
