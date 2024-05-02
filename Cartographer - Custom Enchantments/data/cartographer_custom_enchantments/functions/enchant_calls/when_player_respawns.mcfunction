#These effects will activate when the player respawns.

tag @s add no_cdl_msg

#Do any necessary enchantment resets here
scoreboard players set @s ca.momentum_charge 0
scoreboard players set @s ca.momentum_tier 0
function cartographer_custom_enchantments:enchant_effects/momentum/del_attributes

#Soulbound Return
function cartographer_custom_enchantments:enchant_effects/soulbound_return

scoreboard players set @s ca.death_time 21