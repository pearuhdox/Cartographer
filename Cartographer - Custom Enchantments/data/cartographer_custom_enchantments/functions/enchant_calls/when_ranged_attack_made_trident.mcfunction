#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.


#Hydraulic
execute as @s[scores={ca.hydraulic=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags_trident

#Do Loyalty After
execute as @s[scores={ca.loyalty=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty

#Do Wavedashing Throw
execute as @s[scores={ca.wavedash=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/throw

#Reset Fleetfoot
attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

tag @s remove threw_trident

function #minecraft:cartographer/events/player_throw_trident
