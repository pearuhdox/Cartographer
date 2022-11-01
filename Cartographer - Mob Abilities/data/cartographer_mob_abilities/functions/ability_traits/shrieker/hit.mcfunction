function bb:lib/get_target_status/get_percentage_health

execute if score $percentage_health_remaining bbl.storage matches ..50 as @s at @s run function cartographer_mob_abilities:ability_traits/shrieker/shriek