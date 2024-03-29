#Infinity Refresh
function cartographer_custom_enchantments:enchant_effects/infinity/kill_handler/tick_down

#Adrenaline
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.adrenaline matches 1.. run function cartographer_custom_enchantments:enchant_effects/adrenaline
#Auto Charge
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge/count_check
#Energetic
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.energetic matches 1.. run function cartographer_custom_enchantments:enchant_effects/energetic
#Frenzy
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.frenzy matches 1.. run function cartographer_custom_enchantments:enchant_effects/frenzy
#Lifesteal
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.lifesteal matches 1.. run function cartographer_custom_enchantments:enchant_effects/lifesteal
#Lightborn
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.lightborn matches 1.. run function cartographer_custom_enchantments:enchant_effects/lightborn/chance

#Quake
execute if score @s ca.quake matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/find

#Aquadynamic Refresh
#Lifesteal
execute if score $cu_en_kill ca.enabler matches 1.. if score @s ca.aquadynamic matches 1.. run function cartographer_custom_enchantments:enchant_effects/aquadynamic/refresh_kill

#Melee effects run on melee kills onlye
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.deal_mel_dmg matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.deal_mel_dmg2 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee
execute if score $cu_en_melee ca.enabler matches 1.. if score @s ca.deal_mel_dmg3 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee

#Loyalty kickbacks only if the player can recharge loyalty tridents
execute unless score @s ca.deal_mel_dmg matches 1.. if score @s ca.deal_mel_dmg2 matches 1.. if score @s ca.deal_mel_dmg3 matches 1.. if score @s ca.loyalty_time matches 0.. unless score @s ca.loyalty_refund_cooldown matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

#Wavedash triggers on the TRIDENT only if applicable - And only if not melee kill
execute if score @s ca.wavedash_time matches 1.. unless score @s ca.deal_mel_dmg matches 1.. unless score @s ca.deal_mel_dmg2 matches 1.. unless score @s ca.deal_mel_dmg3 matches 1.. as @e[type=trident,tag=custom_trident,scores={ca.wavedash=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/teleport_start_kill

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if score @s ca.rally_time matches 1.. run scoreboard players set @s ca.rally_damage 80

#Echo Charge Restore
execute if score @s ca.echo matches 1.. run function cartographer_custom_enchantments:enchant_effects/echo/restore

#Evocation Charge Restore
execute if score @s ca.evocation matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/restore_check

#Sweeping Charge Restore
execute if score @s ca.sweeping matches 1.. run function cartographer_custom_enchantments:enchant_effects/sweeping/restore

#Surging Charge Restore
execute if score @s ca.thrusting matches 1.. run function cartographer_custom_enchantments:enchant_effects/thrusting/restore

#Slamming Charge Restore
execute if score @s ca.slamming matches 1.. run function cartographer_custom_enchantments:enchant_effects/slamming/restore

#Concealed Restore (if score $cu_en_passive ca.enabler matches 1..)
execute if score @s ca.concealed matches 1.. run function cartographer_custom_enchantments:enchant_effects/concealed/restore