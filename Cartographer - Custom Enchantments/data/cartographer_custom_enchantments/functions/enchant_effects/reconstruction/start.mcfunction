scoreboard players set $did_reconstruct ca.ench_var 0

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_1] run scoreboard players set $reconstruct_slot ca.ench_var 1
execute if score $reconstruct_slot ca.ench_var matches 1 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_2] run scoreboard players set $reconstruct_slot ca.ench_var 2
execute if score $reconstruct_slot ca.ench_var matches 2 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_3] run scoreboard players set $reconstruct_slot ca.ench_var 3
execute if score $reconstruct_slot ca.ench_var matches 3 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_4] run scoreboard players set $reconstruct_slot ca.ench_var 4
execute if score $reconstruct_slot ca.ench_var matches 4 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_5] run scoreboard players set $reconstruct_slot ca.ench_var 5
execute if score $reconstruct_slot ca.ench_var matches 5 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_6] run scoreboard players set $reconstruct_slot ca.ench_var 6
execute if score $reconstruct_slot ca.ench_var matches 6 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_7] run scoreboard players set $reconstruct_slot ca.ench_var 7
execute if score $reconstruct_slot ca.ench_var matches 7 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_8] run scoreboard players set $reconstruct_slot ca.ench_var 8
execute if score $reconstruct_slot ca.ench_var matches 8 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_9] run scoreboard players set $reconstruct_slot ca.ench_var 9
execute if score $reconstruct_slot ca.ench_var matches 9 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair


scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_feet] run scoreboard players set $reconstruct_slot ca.ench_var 100
execute if score $reconstruct_slot ca.ench_var matches 100 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_legs] run scoreboard players set $reconstruct_slot ca.ench_var 101
execute if score $reconstruct_slot ca.ench_var matches 101 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_body] run scoreboard players set $reconstruct_slot ca.ench_var 102
execute if score $reconstruct_slot ca.ench_var matches 102 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_head] run scoreboard players set $reconstruct_slot ca.ench_var 103
execute if score $reconstruct_slot ca.ench_var matches 103 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair

scoreboard players set $reconstruct_slot ca.ench_var 0
execute if entity @s[tag=ca.reconstruct_offh] run scoreboard players set $reconstruct_slot ca.ench_var 106
execute if score $reconstruct_slot ca.ench_var matches 106 run function cartographer_custom_enchantments:enchant_effects/reconstruction/do_repair