tp @s @e[type=armor_stand,tag=hook_marker,sort=nearest,limit=1]
scoreboard players operation @s hook_id = $master hook_id
scoreboard players set @s helper_lifetime 1