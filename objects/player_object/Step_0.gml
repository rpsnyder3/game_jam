/// @description Insert description here
// You can write your code in this editor
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
    var _spd = move_speed;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
	
	has_moved = true;
} 
else
{
	if has_moved == true globals.time_health -= 1;
	// if time_health == 0 DIE
}

 if (keyboard_check(ord("W")) and keyboard_check(ord("A")))
{
    image_angle = 45;
}
else if (keyboard_check(ord("A")) and keyboard_check(ord("S")))
{
    image_angle = 135;
}
else if (keyboard_check(ord("S")) and keyboard_check(ord("D")))
{
    image_angle = 225;
}
else if (keyboard_check(ord("W")) and keyboard_check(ord("D")))
{
    image_angle = 315;
}
else if keyboard_check(ord("W"))
{
     image_angle = 0;
}
else if keyboard_check(ord("S"))
{
    image_angle = 180;
}
else if keyboard_check(ord("A"))
{
    image_angle = 90;
}
else if keyboard_check(ord("D"))
{
    image_angle = 270;
}

if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}



// BULLET FIRING
if can_shoot 
{
	if keyboard_check(vk_right)
	{
	        var new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			new_bullet.direction = 0;
			new_bullet.image_angle = 0;
			alarm[0] = rate_of_fire;
			can_shoot = false;
	}
	else if keyboard_check(vk_up)
	{
	        var new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			new_bullet.direction = 90;
			new_bullet.image_angle = 90;
			alarm[0] = rate_of_fire;
			can_shoot = false;
	}
	else if keyboard_check(vk_left)
	{
	        var new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			new_bullet.direction = 180;
			new_bullet.image_angle = 180;
			alarm[0] = rate_of_fire;
			can_shoot = false;
	}
	else if keyboard_check(vk_down)
	{
	        var new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			new_bullet.direction = 270;
			new_bullet.image_angle = 270;
			alarm[0] = rate_of_fire;
			can_shoot = false;
	}
}

// DASH
if can_dash
{
	if keyboard_check(vk_shift)
	{
		var _spd = dash_length;
	    var _dir = point_direction(0, 0, _hspd, _vspd);
	    var _xadd = lengthdir_x(_spd, _dir);
	    var _yadd = lengthdir_y(_spd, _dir);
	    x = x + _xadd;
	    y = y + _yadd;
		alarm[1] = dash_cooldown;
		can_dash = false;
	}
		
}