data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item set from entity @s SelectedItem
execute unless data storage ca.susu:enchants temp_item.tag.Sapper run data modify storage ca.susu:enchants temp_item set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Adrenaline
scoreboard players operation @s ca.s_adren += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Energetic
scoreboard players operation @s ca.s_energ += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Frenzy
scoreboard players operation @s ca.s_frenzy += $temp ca.susu