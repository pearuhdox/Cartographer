#Adrenaline
execute if score @s ca.adrenaline matches 1.. run function cartographer_custom_enchantments:enchant_effects/adrenaline/master
#Energetic
execute if score @s ca.energetic matches 1.. run function cartographer_custom_enchantments:enchant_effects/energetic/master
#Frenzy
execute if score @s ca.frenzy matches 1.. run function cartographer_custom_enchantments:enchant_effects/frenzy/master
#Steadfast
execute if score @s ca.lifeblood matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifeblood/master


#Lifesteal
execute if score @s ca.lifesteal matches 1.. unless score @s ca.lifesteal_use_check matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal/master

#Quake
execute unless score @s ca.quake_use_check matches 1.. if score @s ca.quake matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/find


#Lifesteal
execute if score @s ca.lifesteal_use_check matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal/projectile_master


#Aquadynamic Refresh
execute if score @s ca.aquadynamic matches 1.. run function cartographer_custom_enchantments:enchant_effects/aquadynamic/refresh_kill