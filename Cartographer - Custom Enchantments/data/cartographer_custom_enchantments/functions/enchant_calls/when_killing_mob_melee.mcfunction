#Duelist
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.duelist matches 1.. run function cartographer_custom_enchantments:enchant_effects/duelist


scoreboard players set $use_charge_ench ca.ench_var 0
#Echo
execute if score $cu_en_melee ca.enabler matches 1.. unless score $use_charge_ench ca.ench_var matches 1.. if score @s ca.echo matches 1.. unless entity @s[tag=!ca.echo_charge_taken] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if score $cu_en_melee ca.enabler matches 1.. unless score $use_charge_ench ca.ench_var matches 1.. unless score @s ca.echo matches 1.. if entity @s[scores={ca.evocation=1..},advancements={entityid:player_hurt_entity={no_impact=false,is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/evocation
#Sweeping
execute if score $cu_en_melee ca.enabler matches 1.. unless score $use_charge_ench ca.ench_var matches 1.. unless entity @s[tag=ca.sweep_schedule_success] unless score @s ca.echo matches 1.. unless score @s ca.evocation matches 1.. if entity @s[scores={ca.sweeping=1..},advancements={entityid:player_hurt_entity={no_impact=false,is_projectile=false}}] run function cartographer_custom_enchantments:enchant_effects/sweeping/master
#Surging
execute if score $cu_en_melee ca.enabler matches 1.. unless score $use_charge_ench ca.ench_var matches 1.. if score @s ca.thrusting matches 1.. if predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/thrusting/master
#Slamming
execute if score $cu_en_melee ca.enabler matches 1.. unless score $use_charge_ench ca.ench_var matches 1.. if score @s ca.slamming matches 1.. unless predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/slamming/master


#Executioner
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.executioner matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.hunter matches 1.. run function cartographer_custom_enchantments:enchant_effects/hunter


#Momentum Attack
execute if score $cu_en_melee ca.enabler matches 1.. if entity @s[scores={ca.momentum=1..,ca.momentum_charge=2000..}] run function cartographer_custom_enchantments:enchant_effects/momentum/strike

#First Strike Reset Chance
execute if score @s ca.first_strike matches 1.. if score @s ca.resetter_check_kill matches 1..9 run function cartographer_custom_enchantments:enchant_effects/first_strike/kill

#Echo Reset Chance
execute if score @s ca.echo matches 1.. if score @s ca.resetter_check_kill matches 1..9 run function cartographer_custom_enchantments:enchant_effects/echo/kill

#Evocation Reset Chance
execute if score @s ca.evocation matches 1.. if score @s ca.resetter_check_kill matches 1..9 run function cartographer_custom_enchantments:enchant_effects/evocation/kill
