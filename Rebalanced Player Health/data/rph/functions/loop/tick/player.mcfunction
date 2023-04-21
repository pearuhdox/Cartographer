attribute @s minecraft:generic.max_health base set 100

execute if predicate rph:is_absorption run function rph:health/abs_convert


execute if score @s rph.health > @s rph.health_max run scoreboard players operation @s rph.health = @s rph.health_max

execute if score @s rph.regen_time matches 60 run function rph:regeneration/master

execute if score @s rph.hunger matches 7.. if score @s rph.health < @s rph.health_max unless score @s rph.mana < $20 rph.var run scoreboard players add @s rph.regen_time 1
execute if score @s rph.hunger matches 7.. unless score @s rph.health < @s rph.health_max if score @s rph.mana < $20 rph.var run scoreboard players add @s rph.regen_time 1
execute if score @s rph.hunger matches 7.. if score @s rph.health < @s rph.health_max if score @s rph.mana < $20 rph.var run scoreboard players add @s rph.regen_time 1


execute if score @s rph.fall matches 1.. if score @s rph.take_dmg matches 1.. run function rph:test/fall

execute if score @s rph.respawn matches 2 run function rph:health/respawn

execute unless score @s rph.freeze matches 1.. if score @s rph.respawn matches 5.. unless score @s rph.health_math matches 80 unless score @s rph.health_math matches 0 run function rph:health/process_change

execute if score @s rph.respawn matches 1.. run function rph:ui/display

execute if score @s rph.freeze matches 1 run function rph:health/totem_proc_finish


execute if predicate rph:is_poisoned if score @s rph.health matches 1..101 run effect clear @s poison

execute if score @s rph.cooldown matches 1.. run scoreboard players remove @s rph.cooldown 1

execute if score @s rph.freeze matches 1.. run scoreboard players remove @s rph.freeze 1
execute if score @s rph.one_shot_cooldown matches 1.. run scoreboard players remove @s rph.one_shot_cooldown 1

scoreboard players set @s rph.fall 0
scoreboard players set @s rph.take_dmg 0

execute unless score @s rph.hunger matches 1.. run scoreboard players set @s rph.hunger 20