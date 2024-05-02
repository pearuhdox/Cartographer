execute if score @s ca.sweep_side matches 1 run tp @s ~ ~ ~ ~5 ~
execute if score @s ca.sweep_side matches 2 run tp @s ~ ~ ~ ~-5 ~

execute if score @s ca.sweep_animation matches 16 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.5
execute if score @s ca.sweep_animation matches 15 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.6
execute if score @s ca.sweep_animation matches 14 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.7
execute if score @s ca.sweep_animation matches 13 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.8
execute if score @s ca.sweep_animation matches 12 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.9
execute if score @s ca.sweep_animation matches 11 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.0
execute if score @s ca.sweep_animation matches 10 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.1
execute if score @s ca.sweep_animation matches 9 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.2
execute if score @s ca.sweep_animation matches 8 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.3
execute if score @s ca.sweep_animation matches 7 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.4
execute if score @s ca.sweep_animation matches 6 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.5
execute if score @s ca.sweep_animation matches 5 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.6
execute if score @s ca.sweep_animation matches 4 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.7
execute if score @s ca.sweep_animation matches 3 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.8
execute if score @s ca.sweep_animation matches 2 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 1.9
execute if score @s ca.sweep_animation matches 1 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 2.0

function cartographer_mob_abilities:abilities/sweep/stage

execute if score @s ca.sweep_animation matches 1 run function cartographer_mob_abilities:abilities/sweep/end

scoreboard players remove @s ca.sweep_animation 1