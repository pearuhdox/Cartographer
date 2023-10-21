tag @s remove ca.block_death_effects
execute on vehicle if entity @s[tag=ca.deathbomb] unless data entity @s {DeathTime:0s} on passengers run tag @s add ca.block_death_effects
execute on vehicle unless entity @s[tag=ca.deathbomb] if data entity @s {DeathTime:0s} on passengers run tag @s add ca.block_death_effects