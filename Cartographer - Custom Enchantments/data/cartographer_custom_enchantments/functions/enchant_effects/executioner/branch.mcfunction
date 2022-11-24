#Manual Call of Function because I have no choice - "Its Bad Practice to Change Libraries Yourself"

#Get player's max health
execute store result score $target_max_health bbl.storage run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health

scoreboard players operation $target_health bbl.storage -= $exec_dmg bbl.storage

#Multiply current health by 100
scoreboard players operation $target_health bbl.storage *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $target_health bbl.storage /= $target_max_health bbl.storage
#Set intermediary score
scoreboard players operation $percentage_health_remaining bbl.storage = $target_health bbl.storage

#End of Manual Get Percent Health Call

#Reset Extra Scores
scoreboard players set $exec_dmg bbl.storage 0

scoreboard players operation @s ca.exec_low = $percentage_health_remaining bbl.storage

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run playsound minecraft:block.netherite_block.place player @a[distance=..8] ~ ~ ~ 2 0.5


execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.2 0.5 0 15 normal

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.2 5 normal

#Trigger Execute hook
execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run function #minecraft:cartographer_events/execute_mob
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run function #minecraft:cartographer_events/execute_mob
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run function #minecraft:cartographer_events/execute_mob

execute if score $exec ca.executioner matches 1 as @s[scores={ca.exec_low=..10}] at @s run function cartographer_custom_enchantments:enchant_effects/executioner/kill_branch
execute if score $exec ca.executioner matches 2 as @s[scores={ca.exec_low=..20}] at @s run function cartographer_custom_enchantments:enchant_effects/executioner/kill_branch
execute if score $exec ca.executioner matches 3 as @s[scores={ca.exec_low=..30}] at @s run function cartographer_custom_enchantments:enchant_effects/executioner/kill_branch