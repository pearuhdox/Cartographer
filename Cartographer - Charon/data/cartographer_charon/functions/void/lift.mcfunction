tp @s ~ -60 ~

playsound minecraft:entity.ender_dragon.flap player @a[distance=..16] ~ ~ ~ 1.5 0.75
playsound minecraft:entity.shulker_bullet.hit player @a[distance=..16] ~ ~ ~ 1 0.5

execute positioned as @s run particle minecraft:cloud ~ ~-1 ~ 1 0.2 1 0.03 80 normal

execute store result score $lift void_home.y run data get entity @s Pos[1]

scoreboard players operation $diff void_home.y = @s void_home.y
scoreboard players operation $diff void_home.y -= $lift void_home.y

#This is 60 blocks
execute if score $diff void_home.y matches 0..10 run effect give @s levitation 1 11 true
execute if score $diff void_home.y matches 11..20 run effect give @s levitation 2 11 true
execute if score $diff void_home.y matches 21..30 run effect give @s levitation 3 11 true
execute if score $diff void_home.y matches 31..40 run effect give @s levitation 4 11 true
execute if score $diff void_home.y matches 41..50 run effect give @s levitation 5 11 true
execute if score $diff void_home.y matches 51..60 run effect give @s levitation 6 11 true
execute if score $diff void_home.y matches 61..70 run effect give @s levitation 7 11 true
execute if score $diff void_home.y matches 71..80 run effect give @s levitation 8 11 true
execute if score $diff void_home.y matches 81..90 run effect give @s levitation 9 11 true
execute if score $diff void_home.y matches 91..100 run effect give @s levitation 10 11 true

execute if score $diff void_home.y matches 101..110 run effect give @s levitation 11 11 true
execute if score $diff void_home.y matches 110..120 run effect give @s levitation 12 11 true
execute if score $diff void_home.y matches 120..130 run effect give @s levitation 13 11 true
execute if score $diff void_home.y matches 130..140 run effect give @s levitation 14 11 true
execute if score $diff void_home.y matches 140..150 run effect give @s levitation 15 11 true
execute if score $diff void_home.y matches 150..160 run effect give @s levitation 16 11 true
execute if score $diff void_home.y matches 160..170 run effect give @s levitation 17 11 true
execute if score $diff void_home.y matches 170..180 run effect give @s levitation 18 11 true
execute if score $diff void_home.y matches 180..190 run effect give @s levitation 19 11 true
execute if score $diff void_home.y matches 190..200 run effect give @s levitation 20 11 true

execute if score $diff void_home.y matches 201..210 run effect give @s levitation 21 11 true
execute if score $diff void_home.y matches 210..220 run effect give @s levitation 22 11 true
execute if score $diff void_home.y matches 220..230 run effect give @s levitation 23 11 true
execute if score $diff void_home.y matches 230..240 run effect give @s levitation 24 11 true
execute if score $diff void_home.y matches 240..250 run effect give @s levitation 25 11 true
execute if score $diff void_home.y matches 250..260 run effect give @s levitation 26 11 true
execute if score $diff void_home.y matches 260..270 run effect give @s levitation 27 11 true
execute if score $diff void_home.y matches 270..280 run effect give @s levitation 28 11 true
execute if score $diff void_home.y matches 280..290 run effect give @s levitation 29 11 true
execute if score $diff void_home.y matches 290..300 run effect give @s levitation 30 11 true

execute if score $diff void_home.y matches 301..310 run effect give @s levitation 31 11 true
execute if score $diff void_home.y matches 310..320 run effect give @s levitation 32 11 true


execute if score $diff void_home.y matches 0..10 run effect give @s slow_falling 5 0 true
execute if score $diff void_home.y matches 11..20 run effect give @s slow_falling 6 0 true
execute if score $diff void_home.y matches 21..30 run effect give @s slow_falling 7 0 true
execute if score $diff void_home.y matches 31..40 run effect give @s slow_falling 8 0 true
execute if score $diff void_home.y matches 41..50 run effect give @s slow_falling 9 0 true
execute if score $diff void_home.y matches 51..60 run effect give @s slow_falling 10 0 true
execute if score $diff void_home.y matches 61..70 run effect give @s slow_falling 11 0 true
execute if score $diff void_home.y matches 71..80 run effect give @s slow_falling 12 0 true
execute if score $diff void_home.y matches 81..90 run effect give @s slow_falling 13 0 true
execute if score $diff void_home.y matches 91..100 run effect give @s slow_falling 14 0 true

execute if score $diff void_home.y matches 101..110 run effect give @s slow_falling 15 0 true
execute if score $diff void_home.y matches 110..120 run effect give @s slow_falling 16 0 true
execute if score $diff void_home.y matches 120..130 run effect give @s slow_falling 17 0 true
execute if score $diff void_home.y matches 130..140 run effect give @s slow_falling 18 0 true
execute if score $diff void_home.y matches 140..150 run effect give @s slow_falling 19 0 true
execute if score $diff void_home.y matches 150..160 run effect give @s slow_falling 20 0 true
execute if score $diff void_home.y matches 160..170 run effect give @s slow_falling 21 0 true
execute if score $diff void_home.y matches 170..180 run effect give @s slow_falling 22 0 true
execute if score $diff void_home.y matches 180..190 run effect give @s slow_falling 23 0 true
execute if score $diff void_home.y matches 190..200 run effect give @s slow_falling 24 0 true

execute if score $diff void_home.y matches 201..210 run effect give @s slow_falling 25 0 true
execute if score $diff void_home.y matches 210..220 run effect give @s slow_falling 26 0 true
execute if score $diff void_home.y matches 220..230 run effect give @s slow_falling 27 0 true
execute if score $diff void_home.y matches 230..240 run effect give @s slow_falling 28 0 true
execute if score $diff void_home.y matches 240..250 run effect give @s slow_falling 29 0 true
execute if score $diff void_home.y matches 250..260 run effect give @s slow_falling 30 0 true
execute if score $diff void_home.y matches 260..270 run effect give @s slow_falling 31 0 true
execute if score $diff void_home.y matches 270..280 run effect give @s slow_falling 32 0 true
execute if score $diff void_home.y matches 280..290 run effect give @s slow_falling 33 0 true
execute if score $diff void_home.y matches 290..300 run effect give @s slow_falling 34 0 true

execute if score $diff void_home.y matches 301..310 run effect give @s slow_falling 35 0 true
execute if score $diff void_home.y matches 310..320 run effect give @s slow_falling 36 0 true

effect give @s darkness 3 0 true

scoreboard players operation @s bbl.damage_queue = $diff void_home.y
scoreboard players operation @s bbl.damage_queue /= $5 ca.CONSTANT
scoreboard players operation @s bbl.damage_queue /= $2 ca.CONSTANT
execute if score @s bbl.damage_queue matches ..4 run scoreboard players set @s bbl.damage_queue 4

function bb:call/hpm/player/damage/true

playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1