execute as @s[tag=ca.parting_gift_cloud] at @s run function cartographer_mob_abilities:passive/parting_gift/cloud/tick
execute as @s[tag=ca.trapper_cloud] at @s run function cartographer_mob_abilities:abilities/trapper/cloud/tick
execute as @s[tag=ca.webbing_cloud] at @s run function cartographer_mob_abilities:ability_traits/webbing/webbing_tick
execute as @s[tag=ca.overloading_lightning_cloud] at @s run function cartographer_mob_abilities:ability_traits/overloading/cloud_tick
execute as @s[tag=ca.storm_lightning_cloud] at @s run function cartographer_mob_abilities:abilities/storm/cloud_tick


execute if score $block_effects_creeper ca.var matches 1.. as @s[nbt={Effects:[{Id:32,Amplifier:127b}]}] at @s run function cartographer_mob_abilities:passive/block_effects/creepers/kill_clouds
execute if score $dragon_fireball_shooter ca.var matches 1.. as @s[tag=!fix_clouds_dragon] at @s run function cartographer_mob_abilities:passive/projectile/fix_dragon_cloud
