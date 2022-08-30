#Run Dragon Fireball Fixers Setup
execute if entity @s[tag=ca.shoot_dragon_fireball] run scoreboard players set $dragon_fireball_shooter ca.var 2

#Run Projectile Replace Passives
execute as @s[type=#bb:hostile] at @s run function cartographer_mob_abilities:loop/tick/projectile_replace_branch

#Armor Stand Effects
execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/tick/armor_stand_branch

#Run Projectile Wither Skull/Dragon Fireball Fix This is Dumb
execute as @s[tag=passive_replaced_projectile,tag=!fixed_custom_projectile] at @s run function cartographer_mob_abilities:loop/tick/fix_projectile_branch

#Run Rift Spot Detonation
execute if entity @s[type=area_effect_cloud,tag=rift_spot] if score @s ca.lifetime matches 1 run function cartographer_mob_abilities:abilities/rift/detonate
scoreboard players remove @s[type=area_effect_cloud,tag=rift_spot] ca.lifetime 1