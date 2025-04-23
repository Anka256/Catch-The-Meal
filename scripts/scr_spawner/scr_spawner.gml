function scr_spawner(){
	spawn_location = irandom(room_width - spr_meal.sprite_width);
	instance_create_layer(spawn_location, - 90, "Instances", obj_meal)
	
}