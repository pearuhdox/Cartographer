scoreboard players set $tracked_exists ca.death_registry 1
execute on vehicle if entity @s[nbt=!{inGround:1b}] run scoreboard players set $tracked_exists ca.death_registry 0

execute if score $tracked_exists ca.death_registry matches 1.. run kill @s