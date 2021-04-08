#Remove the tags on enemies that are up to twice the distance.
execute if entity @s[tag=rend_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_rend

execute if entity @s[tag=conductive_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_conductive

execute if entity @s[tag=pin_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_pin

execute if entity @s[tag=frost_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frost

execute if entity @s[tag=decay_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_decay

execute if entity @s[tag=flash_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_flash

execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_volatile
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_red
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_con
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_flame
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_pin
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_frost
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_decay
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_flash

execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_p_1
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_p_2
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_p_3
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_p_4
execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vol_p_5


execute if entity @s[tag=tempo_arrow_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempo_1
execute if entity @s[tag=tempo_arrow_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempo_2
execute if entity @s[tag=tempo_arrow_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempo_3

execute if entity @s[tag=punch_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove punch_1
execute if entity @s[tag=punch_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove punch_2
execute if entity @s[tag=punch_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove punch_3
execute if entity @s[tag=punch_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove punch_4
execute if entity @s[tag=punch_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove punch_5

#Add all the tags back to the arrow.
execute if entity @s[tag=rend_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_rend

execute if entity @s[tag=conductive_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_conductive

execute if entity @s[tag=pin_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_pin

execute if entity @s[tag=frost_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frost

execute if entity @s[tag=decay_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_decay

execute if entity @s[tag=flash_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_flash
execute if entity @s[tag=flash_arrow] as @s at @s run scoreboard players operation @e[type=#cartographer_core:hostile,distance=..6] flash = @s flash


execute if entity @s[tag=volatile_arrow] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_volatile
execute if entity @s[tag=vol_rend] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_rend
execute if entity @s[tag=vol_con] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_con
execute if entity @s[tag=vol_flame] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_flame
execute if entity @s[tag=vol_pin] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_pin
execute if entity @s[tag=vol_frost] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_frost
execute if entity @s[tag=vol_decay] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_decay
execute if entity @s[tag=vol_stun] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_flash

execute if entity @s[tag=vol_p_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_p_1
execute if entity @s[tag=vol_p_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_p_2
execute if entity @s[tag=vol_p_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_p_3
execute if entity @s[tag=vol_p_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_p_4
execute if entity @s[tag=vol_p_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vol_p_5


execute if entity @s[tag=volatile_arrow] as @s at @s run scoreboard players operation @e[type=#cartographer_core:hostile,distance=..6] ca.vol_dmg = @s ca.vol_dmg

execute if entity @s[tag=tempo_arrow_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempo_1
execute if entity @s[tag=tempo_arrow_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempo_2
execute if entity @s[tag=tempo_arrow_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempo_3

execute if entity @s[tag=punch_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_punch_1
execute if entity @s[tag=punch_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_punch_2
execute if entity @s[tag=punch_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_punch_3
execute if entity @s[tag=punch_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_punch_4
execute if entity @s[tag=punch_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_punch_5

execute if entity @s[tag=punch_1] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,distance=..6,tag=punch_1,tag=custom_arrow,limit=1] feet
execute if entity @s[tag=punch_2] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,distance=..6,tag=punch_2,tag=custom_arrow,limit=1] feet
execute if entity @s[tag=punch_3] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,distance=..6,tag=punch_3,tag=custom_arrow,limit=1] feet
execute if entity @s[tag=punch_4] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,distance=..6,tag=punch_4,tag=custom_arrow,limit=1] feet
execute if entity @s[tag=punch_5] run execute as @e[type=#cartographer_core:hostile,distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[type=arrow,distance=..6,tag=punch_5,tag=custom_arrow,limit=1] feet

scoreboard players add @s[type=arrow,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1