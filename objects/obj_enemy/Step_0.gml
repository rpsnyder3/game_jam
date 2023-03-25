/// @description Insert description here
// You can write your code in this editor
if enemy_health <= 0 instance_destroy();

var player_exists = false;
player_exists = instance_exists(player_object);

if player_exists
{
	direction = point_direction(x, y, player_object.x, player_object.y);
	speed = spd;
}