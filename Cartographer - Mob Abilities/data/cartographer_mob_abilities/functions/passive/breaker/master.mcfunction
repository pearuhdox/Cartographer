execute on target run tag @s add ca.breaker_target

execute if entity @a[tag=ca.breaker_target,distance=..20] positioned ~ ~1.65 ~ facing entity @a[tag=ca.breaker_target,limit=1,sort=nearest] eyes positioned ^ ^0.2 ^1 run function cartographer_mob_abilities:passive/breaker/block_check

#execute unless entity @a[tag=ca.breaker_target] anchored feet positioned ~ ~1.65 ~ positioned ^ ^0.2 ^1 run function cartographer_mob_abilities:passive/breaker/block_check

tag @a remove ca.breaker_target