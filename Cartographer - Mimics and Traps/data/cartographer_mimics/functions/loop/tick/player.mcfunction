execute if score $slower_spawners ca.gamerule matches 1.. run function cartographer_mimics:slower_spawners/break_test

execute if score @s ca.place_trap matches 1.. run function cartographer_mimics:place/master

execute if score $armor_trap_tier ca.gamerule matches 1.. run function cartographer_mimics:loop/tick/armor_trap_tier

execute unless score @s ca.trap_tier matches -3.. run scoreboard players set @s ca.trap_tier 0