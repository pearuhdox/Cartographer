
#Eruption
execute if score $cu_en_spawner ca.enabler matches 1.. if entity @s[scores={ca.eruption=1..}] run function cartographer_custom_enchantments:enchant_effects/eruption

#Sapper
execute if score $cu_en_spawner ca.enabler matches 1.. if entity @s[scores={ca.sapper=1..}] run function cartographer_custom_enchantments:enchant_effects/sapper

#Resupply
execute if score $cu_en_spawner ca.enabler matches 1.. if entity @s[scores={ca.resupply=1..}] run function cartographer_custom_enchantments:enchant_effects/resupply/chance

#Run Auto Charge
execute if score @s ca.auto_charge matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge