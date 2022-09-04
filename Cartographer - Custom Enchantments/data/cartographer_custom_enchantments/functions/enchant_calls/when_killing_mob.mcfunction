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

execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.deal_mel_dmg matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee

#Loyalty - Trigger the nearest Loyalty trident to return
execute if entity @s[scores={ca.loyalty_wait=1..}] as @e[type=trident,tag=ca.loyalty,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if score @s ca.rally_time matches 1.. run scoreboard players set @s ca.rally_damage 80

#Echo Charge Restore
function cartographer_custom_enchantments:enchant_effects/echo_restore

#Concealed Restore (if score $cu_en_passive ca.enabler matches 1..)
execute if score @s ca.concealed matches 1.. run function cartographer_custom_enchantments:enchant_effects/concealed/restore