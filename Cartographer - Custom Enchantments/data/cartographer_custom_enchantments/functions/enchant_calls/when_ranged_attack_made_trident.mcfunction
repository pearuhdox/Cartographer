#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.

#Loyalty
execute as @s[scores={loyalty=1..}] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run function cartographer_custom_enchantments:enchant_effects/loyalty

#Hydraulic
execute as @a[scores={hydraulic=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags_trident

tag @s remove threw_trident