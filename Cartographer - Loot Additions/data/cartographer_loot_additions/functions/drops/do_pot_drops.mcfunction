setblock 4206900 2 4206900 air replace

playsound minecraft:block.decorated_pot.shatter player @a ~ ~ ~ 1.2 0.75

data modify storage cartographer_loot_additions:pot_trap pot_drop set value {}
data modify storage cartographer_loot_additions:pot_trap pot_drop set from entity @s Item

scoreboard players set $cracked ca.loot_var 0
execute if data storage cartographer_loot_additions:pot_trap pot_drop.tag.BlockStateTag{cracked:"true"} run scoreboard players set $cracked ca.loot_var 1

execute as @e[type=item,sort=nearest,limit=1,distance=0.1..2] at @s run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop

#Rest of mechs
execute store result score @s ca.x_seed run data get entity @s Pos[0] 1
execute store result score @s ca.y_seed run data get entity @s Pos[1] 1
execute store result score @s ca.z_seed run data get entity @s Pos[2] 1

execute if entity @s[scores={ca.x_seed=0}] run scoreboard players set @s ca.x_seed 69420
execute if entity @s[scores={ca.y_seed=0}] run scoreboard players set @s ca.y_seed 69420
execute if entity @s[scores={ca.z_seed=0}] run scoreboard players set @s ca.z_seed 69420

scoreboard players set @s ca.derived_seed 1
scoreboard players operation @s ca.derived_seed *= @s ca.x_seed
scoreboard players operation @s ca.derived_seed *= @s ca.y_seed
scoreboard players operation @s ca.derived_seed *= @s ca.z_seed

execute as @s store result block 4206900 2 4206900 LootTableSeed int 1 run scoreboard players add @s ca.derived_seed 0

execute as @p in minecraft:overworld run loot spawn ~ ~ ~ mine 4206900 2 4206900 air{drop_contents:1b}

tag @s add loot_checked

#Sounds and particles
stopsound @a[distance=..16] block minecraft:block.stone.break

kill @s