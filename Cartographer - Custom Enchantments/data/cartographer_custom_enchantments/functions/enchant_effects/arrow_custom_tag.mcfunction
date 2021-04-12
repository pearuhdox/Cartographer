#Add the proper tag to the mob based on closest arrow.
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={rend=1}] run tag @s add is_rend

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={conductive=1}] run tag @s add is_conductive

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={pin_down=1}] run tag @s add is_pin

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={frost=1}] run tag @s add is_frost

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={putrefy=1}] run tag @s add is_decay

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={flash=1..}] run tag @s add is_flash
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={flash=1..}] as @s at @s run scoreboard players operation @s flash = @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={flash=1..}] flash


execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1}] run tag @s add is_volatile
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,rend=1}] run tag @s add is_vol_rend
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,conductive=1}] run tag @s add is_vol_con
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,flame=1}] run tag @s add is_vol_flame
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,pin_down=1}] run tag @s add is_vol_pin
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,frost=1}] run tag @s add is_vol_frost
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,putrefy=1}] run tag @s add is_vol_decay
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,flash=1..}] run tag @s add is_vol_flash

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,punch=1}] run tag @s add is_vol_p_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,punch=2}] run tag @s add is_vol_p_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,punch=3}] run tag @s add is_vol_p_3
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,punch=4}] run tag @s add is_vol_p_4
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1,punch=5}] run tag @s add is_vol_p_5


execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1}] as @s at @s run scoreboard players operation @s ca.vol_dmg = @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={volatile=1}] ca.vol_dmg

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={tempo_theft=1}] run tag @s add is_tempo_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={tempo_theft=2}] run tag @s add is_tempo_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,scores={tempo_theft=3}] run tag @s add is_tempo_3

execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={punch=1}] run tag @s add is_punch_1
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={punch=2}] run tag @s add is_punch_2
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={punch=3}] run tag @s add is_punch_3
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={punch=4}] run tag @s add is_punch_4
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..7,tag=p_cross,scores={punch=5}] run tag @s add is_punch_5

execute if entity @s[tag=is_punch_1] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_2] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_3] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_4] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_5] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet