#Exposing
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/exposing
#Infection
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/infection
#Duelist
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if score $cu_en_melee ca.enabler matches 1.. unless entity @s[tag=!ca.echo_charge_taken] run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation
#Executioner
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/hunter
#Electrocute
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/electrocute
#Surging Strike
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/surging_strike
#Stunning
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/stunning
#Transfiguration
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/transfiguration
#Bleeding
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/bleeding