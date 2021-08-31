data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item set from storage ca.susu:enchants main
execute unless data storage ca.susu:enchants main.tag.CustomEnchantments[{id:"sapper"}].lvl run data modify storage ca.susu:enchants temp_item set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"adrenaline"}].lvl
scoreboard players operation @s ca.s_adren += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"energetic"}].lvl
scoreboard players operation @s ca.s_energ += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"frenzy"}].lvl
scoreboard players operation @s ca.s_frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"concealed"}].lvl
scoreboard players operation @s ca.s_con += $temp ca.susu