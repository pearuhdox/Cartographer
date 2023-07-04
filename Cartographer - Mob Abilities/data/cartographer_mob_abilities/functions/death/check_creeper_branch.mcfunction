tag @s remove ca.block_death_effects
execute if entity @s[tag=ca.deathbomb] on vehicle unless data entity @s {DeathTime:0s} on passengers run tag @s add ca.block_death_effects
execute unless entity @s[tag=ca.deathbomb] on vehicle if data entity @s {DeathTime:0s} on passengers run tag @s add ca.block_death_effects