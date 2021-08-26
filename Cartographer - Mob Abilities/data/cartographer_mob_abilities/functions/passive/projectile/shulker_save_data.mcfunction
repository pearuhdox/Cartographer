#Grab and save effect data for shulker bullet
data modify storage cartographer_mob_abilities:projectile shulker.effects set value []
data modify storage cartographer_mob_abilities:projectile shulker.effects set from entity @s[tag=ca.shoot_shulker_bullet] HandItems[1].tag.CustomPotionEffects
execute if entity @s[tag=ca.shoot_shulker_bullet] run scoreboard players set $shoot_custom_bullet ca.var 1