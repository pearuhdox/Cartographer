playsound minecraft:entity.ravager.attack hostile @a[distance=..16] ~ ~ ~ 5 0.85

effect give @s glowing 1 0 true

execute as @s at @s run particle minecraft:crit ~ ~3 ~ 0.7 2 0.7 0 100

tp @s ~ ~ ~ facing entity @p feet

execute if entity @p[distance=..3] if entity @s[y_rotation=-20..20] run data merge entity @s {Motion:[0.0,1.2,0.0]}

execute if entity @p[distance=3.01..6] if entity @s[y_rotation=-20..20] run data merge entity @s {Motion:[0.0,1.2,0.75]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=21..69] run data merge entity @s {Motion:[-0.53,1.2,0.53]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=70..110] run data merge entity @s {Motion:[-0.75,1.2,0.0]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=111..159] run data merge entity @s {Motion:[-0.53,1.2,-0.53]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=160..200] run data merge entity @s {Motion:[0.0,1.2,-0.75]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=201..249] run data merge entity @s {Motion:[0.53,1.2,-0.53]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=250..290] run data merge entity @s {Motion:[0.75,1.2,0.0]}
execute if entity @p[distance=3.01..6] if entity @s[y_rotation=291..339] run data merge entity @s {Motion:[0.53,1.2,0.53]}

execute if entity @p[distance=6.01..12] if entity @s[y_rotation=-20..20] run data merge entity @s {Motion:[0.0,1.2,1.2]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=21..69] run data merge entity @s {Motion:[-0.85,1.2,0.85]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=70..110] run data merge entity @s {Motion:[-1.2,1.2,0.0]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=111..159] run data merge entity @s {Motion:[-0.85,1.2,-0.85]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=160..200] run data merge entity @s {Motion:[0.0,1.2,-1.2]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=201..249] run data merge entity @s {Motion:[0.85,1.2,-0.85]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=250..290] run data merge entity @s {Motion:[1.2,1.2,0.0]}
execute if entity @p[distance=6.01..12] if entity @s[y_rotation=291..339] run data merge entity @s {Motion:[0.85,1.2,0.85]}

execute if entity @p[distance=12.01..18] if entity @s[y_rotation=-20..20] run data merge entity @s {Motion:[0.0,1.2,1.7]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=21..69] run data merge entity @s {Motion:[-1.2,1.2,1.2]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=70..110] run data merge entity @s {Motion:[-1.7,1.2,0.0]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=111..159] run data merge entity @s {Motion:[-1.2,1.2,-1.2]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=160..200] run data merge entity @s {Motion:[0.0,1.2,-1.7]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=201..249] run data merge entity @s {Motion:[1.2,1.2,-1.2]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=250..290] run data merge entity @s {Motion:[1.7,1.2,0.0]}
execute if entity @p[distance=12.01..18] if entity @s[y_rotation=291..339] run data merge entity @s {Motion:[1.2,1.2,1.2]}

execute unless entity @s[scores={smash_bounce=0..}] run scoreboard players set @s smash_bounce 0

execute unless entity @s[scores={smash_bounce=1..}] if entity @s[tag=recast] run scoreboard players set @s smash_bounce 2
execute unless entity @s[scores={smash_bounce=1..}] if entity @s[tag=rerecast] run scoreboard players set @s smash_bounce 3
execute unless entity @s[scores={smash_bounce=1..}] run scoreboard players set @s smash_bounce 1

tag @s add airborne

scoreboard players set @a mob_sturdy 31

tag @s remove attacking