scoreboard players remove @s ca.rally_mark_dur 1

execute anchored feet run particle minecraft:dust_color_transition 1 0.5 0.75 1 1 0.35 0.5 ^ ^1 ^ 0.35 0.35 0.35 0 4 normal

execute if score @s ca.rally_mark_dur matches 60 run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive/chime
execute if score @s ca.rally_mark_dur matches 45 run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive/chime
execute if score @s ca.rally_mark_dur matches 30 run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive/chime
execute if score @s ca.rally_mark_dur matches 15 run function cartographer_custom_enchantments:enchant_effects/rally/mark_passive/chime

execute if score @s ca.rally_mark_dur matches 1 run scoreboard players set @s ca.rally_mark_amt 0
execute if score @s ca.rally_mark_dur matches 1 run tag @s remove ca.rally_marked
execute if score @s ca.rally_mark_dur matches 1 run scoreboard players set @s ca.rally_mark_dur 0