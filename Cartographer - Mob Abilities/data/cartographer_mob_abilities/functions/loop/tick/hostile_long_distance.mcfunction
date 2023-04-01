execute if score $run_corpse_@e ca.summon_id matches 1 as @s[tag=ca.corpse_crawler_summoned,tag=!corpse_crawler_checked] at @s run function cartographer_mob_abilities:death/corpse_crawler/summon/data

execute if entity @s[tag=ca.sh_custom] run function cartographer_mob_abilities:loop/tick/projectile_replace_branch
execute as @s[type=wither_skeleton,tag=ca.prevent_effects] at @s run function cartographer_mob_abilities:passive/projectile/check_projectile/main