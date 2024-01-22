#If this is a melee attack, run this branch
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false,no_impact=false}}] run function cartographer_custom_enchantments:enchant_calls/when_melee_attack

#If this is a ranged attack set this score
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,no_impact=false}}] run scoreboard players set $was_ranged_attack ca.var 1

#Regardless of attack type try to proc Deadeye
execute if score @s ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/chance

#Rally Restoration
execute if score $rally_restore ca.rally matches 1.. run function cartographer_custom_enchantments:enchant_effects/rally/restore

#If a projectile attack, we attempt to give loyalty charges back
#If the player is recharging loyalty, give them 6 ticks of time back (3 seconds)
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score @s ca.loyalty_time matches 0.. unless score @s ca.loyalty_refund_cooldown matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

#Check for ranged attack
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run tag @s add ca.made_ranged_attack