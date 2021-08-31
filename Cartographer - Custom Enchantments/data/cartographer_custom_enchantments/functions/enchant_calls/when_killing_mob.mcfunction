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

#Committed
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/committed
#Decay
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/decay
#Duelist
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/duelist
#Echo
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/echo
#Evocation
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation
#Executioner
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner
#Frostbite
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite
#Hunter
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/hunter
#Overload
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/overload
#Surging Strike
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/surging_strike
#Stunning
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/stunning
#Transfiguration
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/transfiguration
#Vicious
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/vicious
#Vanquisher
execute if score $cu_en_melee ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/vanquisher

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if entity @s[scores={ca.atk_time=0}] run function cartographer_custom_enchantments:enchant_effects/rally/restore_health

#Echo Charge Restore
function cartographer_custom_enchantments:enchant_effects/echo_restore

#Concealed Restore (if score $cu_en_passive ca.enabler matches 1..)
function cartographer_custom_enchantments:enchant_effects/concealed/restore

#Call Invul Timer for Mob Abilities
scoreboard players set $invul_time_check invul 25
