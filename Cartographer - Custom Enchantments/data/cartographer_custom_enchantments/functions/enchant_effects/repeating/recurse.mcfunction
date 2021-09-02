#Clear arrows (if we need to)
execute if score $clear_arrow ca.ammo = $clear_arrow_count ca.ammo run function cartographer_custom_enchantments:enchant_effects/repeating/clear_arrows
execute if score $clear_s_arrow ca.ammo = $clear_s_arrow_count ca.ammo run function cartographer_custom_enchantments:enchant_effects/repeating/clear_spectral_arrows
execute if score $clear_t_arrow ca.ammo = $clear_t_arrow_count ca.ammo run function cartographer_custom_enchantments:enchant_effects/repeating/clear_tipped_arrows

#What arrow do we add to the quiver?
data modify storage suso:pldata working_data.RepeatingTest set value {}
scoreboard players set $arrow_type ca.repeating 0

#Check tipped arrows
scoreboard players set $arrow_type ca.repeating 1
data modify storage suso:pldata working_data.RepeatingTest_temp set value []
data modify storage suso:pldata working_data.RepeatingTest_temp append from entity @s Inventory[{id:"minecraft:tipped_arrow"}]
data modify storage suso:pldata working_data.RepeatingTest set from storage suso:pldata working_data.RepeatingTest_temp[0]
execute if data storage suso:pldata working_data.RepeatingTest.id store result score $clear_t_arrow_count ca.ammo run data get storage suso:pldata working_data.RepeatingTest.Count
execute if data storage suso:pldata working_data.RepeatingTest.id run tag @s add loading_tipped

#Check spectral arrows
execute unless entity @s[tag=loading_tipped] run scoreboard players set $arrow_type ca.repeating 2
execute unless entity @s[tag=loading_tipped] run data modify storage suso:pldata working_data.RepeatingTest set from entity @s Inventory[{id:"minecraft:spectral_arrow"}]
execute unless entity @s[tag=loading_tipped] store result score $clear_s_arrow_count ca.ammo run data get storage suso:pldata working_data.RepeatingTest.Count
execute unless entity @s[tag=loading_tipped] if data storage suso:pldata working_data.RepeatingTest.id run tag @s add loading_spectral

#Check normal arrows
execute unless entity @s[tag=loading_tipped] unless entity @s[tag=loading_spectral] run scoreboard players set $arrow_type ca.repeating 3
execute unless entity @s[tag=loading_tipped] unless entity @s[tag=loading_spectral] run data modify storage suso:pldata working_data.RepeatingTest set from entity @s Inventory[{id:"minecraft:arrow"}]
execute unless entity @s[tag=loading_tipped] unless entity @s[tag=loading_spectral] store result score $clear_arrow_count ca.ammo run data get storage suso:pldata working_data.RepeatingTest.Count
execute unless entity @s[tag=loading_tipped] unless entity @s[tag=loading_spectral] if data storage suso:pldata working_data.RepeatingTest.id run tag @s add loading_normal

#Add to the repeating list, if we have no arrows, set to stop repeating, increment our ammo save score.
execute unless data storage suso:pldata working_data.RepeatingTest.id run scoreboard players set @s ca.ammo 0
execute if data storage suso:pldata working_data.RepeatingTest.id run data modify storage suso:pldata working_data.RepeatingList append from storage suso:pldata working_data.RepeatingTest
scoreboard players add $ammo_save ca.ammo 1

#Add one to count to clear
execute if entity @s[gamemode=!creative,tag=loading_normal,scores={ca.ammo=2..}] run scoreboard players add $clear_arrow ca.ammo 1
execute if entity @s[gamemode=!creative,tag=loading_spectral,scores={ca.ammo=2..}] run scoreboard players add $clear_s_arrow ca.ammo 1
execute if entity @s[gamemode=!creative,tag=loading_tipped,scores={ca.ammo=2..}] run scoreboard players add $clear_t_arrow ca.ammo 1

#Reset tags
tag @s remove loading_tipped
tag @s remove loading_spectral
tag @s remove loading_normal

#Run it again until we run out of repeating slots - If out of slots clear ammo totals
scoreboard players remove @s[scores={ca.ammo=1..}] ca.ammo 1

execute unless entity @s[scores={ca.ammo=1..}] run function cartographer_custom_enchantments:enchant_effects/repeating/clear_arrows
execute unless entity @s[scores={ca.ammo=1..}] run function cartographer_custom_enchantments:enchant_effects/repeating/clear_spectral_arrows
execute unless entity @s[scores={ca.ammo=1..}] run function cartographer_custom_enchantments:enchant_effects/repeating/clear_tipped_arrows

execute if entity @s[scores={ca.ammo=1..}] run function cartographer_custom_enchantments:enchant_effects/repeating/recurse