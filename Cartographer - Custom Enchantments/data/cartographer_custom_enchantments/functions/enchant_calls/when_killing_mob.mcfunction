#Adrenaline
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/adrenaline
#Auto Charge
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge
#Energetic
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/energetic
#Frenzy
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/frenzy
#Lifesteal
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal

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
#First Strike
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/first_strike

#Loyalty - Trigger the nearest Loyalty trident to return
execute if entity @s[tag=waiting_loyalty] as @e[type=trident,tag=ca.loyalty,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.atk_time=0}] run function cartographer_custom_enchantments:enchant_effects/rally/restore_health

#Echo Charge Restore
function cartographer_custom_enchantments:enchant_effects/echo_restore

#Concealed Restore (if score $cu_en_passive ca.enabler matches 1..)
execute if score @s ca.concealed matches 1.. run function cartographer_custom_enchantments:enchant_effects/concealed/restore
