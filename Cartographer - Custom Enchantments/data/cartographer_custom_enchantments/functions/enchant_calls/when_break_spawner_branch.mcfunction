
#Eruption
execute if score $cu_en_spawner ca.enabler matches 1.. if entity @s[scores={ca.eruption=1..}] run function cartographer_custom_enchantments:enchant_effects/eruption/master

#Sapper
execute if score $cu_en_spawner ca.enabler matches 1.. if entity @s[scores={ca.sapper=1..}] run function cartographer_custom_enchantments:enchant_effects/sapper/master

#Adrenaline
execute if score $cu_en_spawner ca.enabler matches 1.. if score @s ca.adrenaline_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/adrenaline/master
#Energetic
execute if score $cu_en_spawner ca.enabler matches 1.. if score @s ca.energetic_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/energetic/master
#Frenzy
execute if score $cu_en_spawner ca.enabler matches 1.. if score @s ca.frenzy_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/frenzy/master
#Steadfast
execute if score $cu_en_spawner ca.enabler matches 1.. if score @s ca.lifeblood_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifeblood/master
#Concealed
execute if score $cu_en_spawner ca.enabler matches 1.. if score @s ca.concealed_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/concealed/restore
