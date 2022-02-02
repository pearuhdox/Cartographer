#Add the proper tag to the mob based on closest arrow.
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.bleed=1}] run tag @s add is_bleed

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.electrode=1}] run tag @s add is_electrode

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.expose=1}] run tag @s add is_pin

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.frost=1}] run tag @s add is_frost

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.infect=1}] run tag @s add is_infection

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.possess=1}] run tag @s add is_possess

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.flash=1..}] run tag @s add is_flash
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.flash=1..}] run scoreboard players operation @s ca.flash = @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.flash=1..}] ca.flash

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.cauterize=1}] run tag @s add is_cauterize

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1}] run tag @s add is_explosive
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.bleed=1}] run tag @s add is_vol_bleed
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.electrode=1}] run tag @s add is_vol_con
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.flame=1}] run tag @s add is_vol_flame
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.expose=1}] run tag @s add is_vol_pin
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.frost=1}] run tag @s add is_vol_frost
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.infect=1}] run tag @s add is_vol_infection
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.flash=1..}] run tag @s add is_vol_flash
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.possess=1..}] run tag @s add is_vol_pos
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.cauterize=1..}] run tag @s add is_vol_cau

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.punch=1}] run tag @s add is_vol_p_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.punch=2}] run tag @s add is_vol_p_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.punch=3}] run tag @s add is_vol_p_3
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.punch=4}] run tag @s add is_vol_p_4
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1,ca.punch=5}] run tag @s add is_vol_p_5


execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1}] run scoreboard players operation @s ca.vol_dmg = @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.explosive=1}] ca.vol_dmg

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.tempo_theft=1}] run tag @s add is_tempo_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.tempo_theft=2}] run tag @s add is_tempo_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={ca.tempo_theft=3}] run tag @s add is_tempo_3

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={ca.punch=1}] run tag @s add is_punch_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={ca.punch=2}] run tag @s add is_punch_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={ca.punch=3}] run tag @s add is_punch_3
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={ca.punch=4}] run tag @s add is_punch_4
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={ca.punch=5}] run tag @s add is_punch_5

execute if entity @s[tag=is_punch_1] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_2] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_3] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_4] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_5] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet

execute if entity @s[tag=is_punch_1] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_2] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_3] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_4] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_5] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f

#Run Arrow Effect Dictionary
function #minecraft:cartographer_events/dict/arrow