tag @a[distance=..2] add ability_tagged

scoreboard players operation $haunt_damage ca.ability_dmg = @s ca.ability_dmg

execute as @a[distance=..2] at @s run function cartographer_mob_abilities:abilities/haunt/shade/hit_player

execute as @s positioned as @a[scores={ca.damage_queue=1..}] run function cartographer_mob_abilities:helper/damage/ability_magic


function cartographer_mob_abilities:ability_traits/call_all_traits_hit

scoreboard players set @s ca.mob_var 20
execute if score @s ca.lifetime matches 40.. run scoreboard players remove @s ca.lifetime 19

execute facing entity @p eyes run particle minecraft:sweep_attack ^ ^0.3 ^1 0.5 0.15 0.5 0 8 normal

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 0.75
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 1.25
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 1.5
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 1.75
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..10] ~ ~ ~ 1 2