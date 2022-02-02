attribute @s minecraft:generic.max_health modifier add 3-5-24-5-3 "execution_check" 0 add
execute store result score @s ca.exec_max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 10
execute store result score @s ca.exec_low run data get entity @s Health 10000
scoreboard players operation @s ca.exec_low /= @s ca.exec_max

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5


execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal

#Trigger Execute hook
execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run function #minecraft:cartographer_events/execute_mob
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run function #minecraft:cartographer_events/execute_mob
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run function #minecraft:cartographer_events/execute_mob

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..100}] at @s run kill @s
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..200}] at @s run kill @s
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..300}] at @s run kill @s