scoreboard players set $tracked_exists ca.status_var 1
execute on vehicle if entity @s[nbt=!{inGround:1b}] run scoreboard players set $tracked_exists ca.status_var 0

execute if score $tracked_exists ca.status_var matches 1.. run kill @s