$attribute @s minecraft:generic.max_health modifier add 31-13-31-13-31 "tier_scaling" $(health) add
$attribute @s minecraft:generic.attack_damage modifier add 31-13-31-13-31 "tier_scaling" $(damage) add

effect give @s[type=#bb:undead] instant_damage 10 2 true
effect give @s[type=!#bb:undead] instant_health 10 2 true

$bossbar set cartographer:mimic max $(health_total)