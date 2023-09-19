scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/fling/charge_bar

scoreboard players set @s mob_move_red 10

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..19 run playsound minecraft:item.crossbow.loading_middle hostile @a[distance=..16] ~ ~ ~ 1.5 1
execute if score @s ability_charge matches 20 run playsound minecraft:item.crossbow.shoot hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

execute if score @s ability_charge matches 1..5 run particle minecraft:poof ~ ~0.2 ~ 2 0 2 0 20 normal
execute if score @s ability_charge matches 6..10 run particle minecraft:poof ~ ~0.2 ~ 1 0 1 0 10 normal
execute if score @s ability_charge matches 11..15 run particle minecraft:poof ~ ~0.2 ~ 0.5 0 0.5 0 4 normal
execute if score @s ability_charge matches 15..19 run particle minecraft:poof ~ ~0.2 ~ 0.1 0 0.1 0 2 normal

execute if score @s ability_charge matches 20 run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

execute if score @s ability_charge matches 20 run ride @e[type=#bb:hostile,distance=0.5..6,limit=1,sort=nearest] mount @s

execute if score @s ability_charge matches 21.. run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 4 normal
execute if score @s ability_charge matches 31..32 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 0.6
execute if score @s ability_charge matches 33..34 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 0.7
execute if score @s ability_charge matches 35..36 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 0.8
execute if score @s ability_charge matches 37..38 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 0.9
execute if score @s ability_charge matches 39..40 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.0
execute if score @s ability_charge matches 41..42 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.1
execute if score @s ability_charge matches 43..44 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.2
execute if score @s ability_charge matches 45..46 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.3
execute if score @s ability_charge matches 47..48 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.4
execute if score @s ability_charge matches 49..50 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.5
execute if score @s ability_charge matches 51..52 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.6
execute if score @s ability_charge matches 53..54 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.7
execute if score @s ability_charge matches 55..56 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.8
execute if score @s ability_charge matches 57..58 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.9
execute if score @s ability_charge matches 59..60 run playsound minecraft:entity.snowball.throw hostile @a[distance=..16] ~ ~ ~ 0.75 2.0


execute if score @s ability_charge matches 1..41 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 61.. run function cartographer_mob_abilities:abilities/fling
