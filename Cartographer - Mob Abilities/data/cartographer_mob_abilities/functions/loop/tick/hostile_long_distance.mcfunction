execute if score $run_corpse_@e ca.summon_id matches 1 as @s[tag=ca.corpse_crawler_summoned,tag=!corpse_crawler_checked] at @s run function cartographer_mob_abilities:passive/corpse_crawler/summon/data

execute if entity @s[tag=ca.shoot_custom_projectile] run function cartographer_mob_abilities:loop/tick/projectile_replace_branch