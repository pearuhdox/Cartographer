#Run Dragon Fireball Fixers Setup
execute if entity @s[tag=ca.sh_dragon_fireball] run scoreboard players set $dragon_fireball_shooter ca.var 2

#Run Projectile Wither Skull/Dragon Fireball Fix This is Dumb
execute as @s[tag=passive_replaced_projectile,tag=!fixed_custom_projectile] at @s run function cartographer_mob_abilities:loop/tick/fix_projectile_branch


#Run Trackers for abilities that chase the player slower, this is even stupider holy shit jesus christ almighty mojang you are the worst
execute as @s[type=potion,tag=ca.ability_tracker] at @s run function cartographer_mob_abilities:trackers/branch
