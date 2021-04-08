data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item set from entity @s Inventory[{Slot:101b}]

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Adrenaline
scoreboard players operation @s adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Agility
scoreboard players operation @s agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Aquadynamic
scoreboard players operation @s aquadynamic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.FatigueCleansing
scoreboard players operation @s f_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.PoisonCleansing
scoreboard players operation @s p_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.WeaknessCleansing
scoreboard players operation @s w_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.SlownessCleansing
scoreboard players operation @s s_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.WitherCleansing
scoreboard players operation @s wi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Concealed
scoreboard players operation @s concealed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Evasion
scoreboard players operation @s evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Energetic
scoreboard players operation @s energetic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Frenzy
scoreboard players operation @s frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Lifesteal
scoreboard players operation @s lifesteal += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Regeneration
scoreboard players operation @s regeneration += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Satiation
scoreboard players operation @s satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.SecondWind
scoreboard players operation @s second_wind += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Spurs
scoreboard players operation @s spurs += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Vengeance
scoreboard players operation @s vengeance += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Thorns
scoreboard players operation @s thorns += $temp ca.susu