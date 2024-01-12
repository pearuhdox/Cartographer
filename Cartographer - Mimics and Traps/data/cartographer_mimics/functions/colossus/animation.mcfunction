scoreboard players add @s ca.colo_animation 1

execute if score @s ca.colo_animation matches 1 run playsound minecraft:entity.warden.emerge hostile @a[distance=..32] ~ ~ ~ 0.75 1.35

scoreboard players operation $mod_3 ca.colo_animation = @s ca.colo_animation
scoreboard players operation $mod_6 ca.colo_animation = @s ca.colo_animation
scoreboard players operation $mod_12 ca.colo_animation = @s ca.colo_animation

scoreboard players operation $mod_3 ca.colo_animation %= $5 ca.CONSTANT
scoreboard players operation $mod_6 ca.colo_animation %= $6 ca.CONSTANT
scoreboard players operation $mod_12 ca.colo_animation %= $12 ca.CONSTANT

particle minecraft:block minecraft:spawner ~ ~-0.5 ~ 0.6 0.2 0.6 0.1 15 normal
particle minecraft:block minecraft:spawner ~ ~-0.1 ~ 0.25 0.2 0.25 0.1 7 normal

execute if score @s ca.colo_animation matches 40.. run particle minecraft:block minecraft:spawner ~ ~0.3 ~ 0.15 1 0.15 0 10 normal

execute if score $mod_3 ca.colo_animation matches 0 run particle minecraft:campfire_signal_smoke ~ ~-0.2 ~ 0 0 0 0.15 2 normal
execute if score $mod_6 ca.colo_animation matches 0 run particle minecraft:explosion ~ ~-0.3 ~ 0 0 0 0 1 normal
execute if score $mod_12 ca.colo_animation matches 0 run particle minecraft:lava ~ ~0.3 ~ 0 1 0 0 10 normal

execute if score $mod_12 ca.colo_animation matches 0 run playsound minecraft:block.anvil.use hostile @a[distance=..16] ~ ~ ~ 0.3 1.4

execute if score $mod_6 ca.colo_animation matches 0 positioned ~ ~-0.2 ~ run function cartographer_mimics:colossus/animation/circle

execute if score @s ca.colo_animation matches 1 positioned ~ ~-0.2 ~ run function cartographer_mimics:colossus/animation/circle

execute if score @s ca.colo_animation matches 1 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.0
execute if score @s ca.colo_animation matches 6 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.1
execute if score @s ca.colo_animation matches 12 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.2
execute if score @s ca.colo_animation matches 18 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.3
execute if score @s ca.colo_animation matches 24 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.4
execute if score @s ca.colo_animation matches 30 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.5
execute if score @s ca.colo_animation matches 36 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.6
execute if score @s ca.colo_animation matches 42 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.7
execute if score @s ca.colo_animation matches 48 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.8
execute if score @s ca.colo_animation matches 54 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 1.9
execute if score @s ca.colo_animation matches 60 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..16] ~ ~ ~ 0.75 2

execute if score @s ca.colo_animation matches 66.. run function cartographer_mimics:loop/tick/colossus_stand_branch