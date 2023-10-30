scoreboard players operation $charm_value ca.status_var = @s ca.effect_morph
 

scoreboard players set @s ca.charm_time 1

playsound minecraft:entity.vex.charge player @a[distance=..16] ~ ~ ~ 1 1.6

execute as @e[type=#bb:hostile,distance=0.1..15] at @s run scoreboard players operation @s ca.charm_immune = $charm_value ca.status_var