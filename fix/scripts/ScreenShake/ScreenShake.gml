// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @desc ScrenShake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake
/// @arg Frames sets the length of the shake in frames

with(oCamera) {
	if (argument0 > shake_remain) {
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}