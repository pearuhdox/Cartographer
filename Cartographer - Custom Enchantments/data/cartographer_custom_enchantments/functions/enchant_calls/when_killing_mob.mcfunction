#Infinity Refresh
function cartographer_custom_enchantments:enchant_effects/infinity/kill_handler/tick_down

#Auto Charge
execute if score $cu_en_kill ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge/count_check

#Check to fire Deadeye
execute if score @s ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/chance

#Effects that can be affected by Curse of misfortune, do this check here
execute unless score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_branch

execute if score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/other
execute if score @s ca.curse_misfortune matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_branch


#Check Melee effects that can be affected by Curse of misfortune
execute unless score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee

execute if score @s ca.curse_misfortune matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/mainhand
execute if score @s ca.curse_misfortune matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee


#Loyalty kickbacks only if the player can recharge loyalty tridents
execute unless score @s ca.deal_mel_dmg matches 1.. if score @s ca.deal_mel_dmg2 matches 1.. if score @s ca.deal_mel_dmg3 matches 1.. if score @s ca.loyalty_time matches 0.. unless score @s ca.loyalty_refund_cooldown matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

#Wavedash triggers on the TRIDENT only if applicable - And only if not melee kill
execute if score @s ca.wavedash_time matches 1.. unless score @s ca.deal_mel_dmg matches 1.. unless score @s ca.deal_mel_dmg2 matches 1.. unless score @s ca.deal_mel_dmg3 matches 1.. as @e[type=trident,tag=custom_trident,scores={ca.wavedash=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/teleport_start_kill

#Rally - Can trigger on any type of attack.
execute if score $cu_en_passive ca.enabler matches 1.. if score @s ca.rally_time matches 1.. run scoreboard players set @s ca.rally_damage 80


#Echo Reset Chance
execute if score @s ca.echo matches 1.. if score @s ca.resetter_check_kill matches 1..9 run function cartographer_custom_enchantments:enchant_effects/echo/kill

#Evocation Reset Chance
execute if score @s ca.evocation matches 1.. if score @s ca.resetter_check_kill matches 1..9 run function cartographer_custom_enchantments:enchant_effects/evocation/kill

execute if score @s ca.sweeping matches 1.. run function cartographer_core:helper/combat/check_combat
execute if score @s ca.slamming matches 1.. run function cartographer_core:helper/combat/check_combat
execute if score @s ca.thrusting matches 1.. run function cartographer_core:helper/combat/check_combat


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