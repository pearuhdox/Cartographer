#Runs the fire charge projectile passive
data remove storage cartographer_mob_abilities:projectile data.effects

data modify storage cartographer_mob_abilities:projectile data.effects set from entity @s HandItems[1].tag.CustomPotionEffects
data modify storage cartographer_mob_abilities:projectile data.color set from entity @s HandItems[1].tag.CustomPotionColor
data modify storage cartographer_mob_abilities:projectile data.id set from entity @s HandItems[1].id

execute store result score $passive_proj_attack_dmg ca.var run attribute @s generic.attack_damage get
scoreboard players operation $passive_proj_attack_dmg ca.var /= $2 ca.CONSTANT

execute as @s[type=!ghast] run function cartographer_mob_abilities:passive/projectile/check_projectile/not_ghast_branch
execute as @s[type=ghast] run function cartographer_mob_abilities:passive/projectile/check_projectile/ghast_branch

execute as @s[type=#cartographer_mob_abilities:shoots_arrows] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/arrow_branch

execute as @s[type=witch,tag=ca.potion_bag] run function cartographer_mob_abilities:passive/projectile/check_projectile/potion_bag_branch