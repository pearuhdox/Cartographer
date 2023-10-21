data modify storage cartographer_mob_abilities:death_effects data set value {}
data modify storage cartographer_mob_abilities:death_effects data.HandItems set from entity @s data.HandItems
data modify storage cartographer_mob_abilities:death_effects data.Tags set from entity @s Tags
data modify storage cartographer_mob_abilities:death_effects data.Offhand set from storage cartographer_mob_abilities:death_effects data.HandItems[1]

#Move Down a bit so that death location is better placed.
execute if block ~ ~-0.5 ~ #cartographer_core:can_raycast run tp @s ~ ~-1 ~

#Run On-Death Skills
execute if entity @s[tag=ca.prevent_effects] positioned ~ ~-1 ~ run kill @e[type=area_effect_cloud,limit=1,sort=nearest,distance=..1.5]

#Duplicate Death Effect - 1.19.4 Updated
execute if entity @s[tag=ca.duplicate] at @s run function cartographer_mob_abilities:passive/duplicate_explosion


#Run All Death Effects - Except on Deathbomb
execute if entity @s[tag=!ca.block_death_effects] run function cartographer_mob_abilities:death/effect_branch


kill @s