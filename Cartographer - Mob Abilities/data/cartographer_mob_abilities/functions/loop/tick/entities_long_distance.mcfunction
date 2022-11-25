#Run Dragon Fireball Fixers Setup
execute if entity @s[tag=ca.shoot_dragon_fireball] run scoreboard players set $dragon_fireball_shooter ca.var 2

#Armor Stand Effects
execute as @s[type=armor_stand] at @s run function cartographer_mob_abilities:loop/tick/armor_stand_branch

#Run Projectile Replace Passives and Corpse Crawler Replace
execute as @s[type=#bb:hostile] at @s run function cartographer_mob_abilities:loop/tick/hostile_long_distance

#Run Projectile Wither Skull/Dragon Fireball Fix This is Dumb
execute as @s[tag=passive_replaced_projectile,tag=!fixed_custom_projectile] at @s run function cartographer_mob_abilities:loop/tick/fix_projectile_branch

#Run Soul Linking
execute as @s[tag=ca.soul_chain_start,tag=!ca.soul_chained] at @s anchored eyes run function cartographer_mob_abilities:passive/soul_chain/setup_start

execute if entity @s[tag=ca.soul_chained] run function cartographer_mob_abilities:passive/soul_chain/kill_check