scoreboard players operation $mod ca.hooked = @s ca.hooked
scoreboard players operation $mod ca.hooked %= $2 ca.CONSTANT

execute if score @s ca.hooked matches 91..101 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 0.5 1
execute if score @s ca.hooked matches 81..90 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 0.65 1
execute if score @s ca.hooked matches 71..80 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 0.8 1
execute if score @s ca.hooked matches 61..70 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 0.95 1
execute if score @s ca.hooked matches 51..60 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.1 1
execute if score @s ca.hooked matches 41..50 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.25 1
execute if score @s ca.hooked matches 31..40 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.4 1
execute if score @s ca.hooked matches 21..30 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.55 1
execute if score @s ca.hooked matches 11..20 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.7 1
execute if score @s ca.hooked matches 1..10 run playsound block.chain.hit hostile @a[distance=..16] ~ ~ ~ 0.6 1.85 1

execute unless score @s ca.hooked matches 100.. if score $mod ca.hooked matches 1 facing entity 31182015-8151-5111-3118-110000000000 feet rotated ~ -4 run function cartographer_mob_abilities:abilities/hookshot/player/drag

execute if score @s ca.hooked matches 101 run function cartographer_mob_abilities:abilities/hookshot/player/start

execute if score @s ca.hooked matches 91 run attribute @s minecraft:generic.movement_speed modifier remove 31-815-1511-54-01

execute if score @s ca.hooked matches 1 run function cartographer_mob_abilities:abilities/hookshot/player/finish

scoreboard players remove @s ca.hooked 1