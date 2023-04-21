effect clear @s instant_damage
effect clear @s absorption
effect clear @s regeneration
effect clear @s fire_resistance

effect give @s regeneration 12 2
effect give @s fire_resistance 30 0
effect give @s resistance 5 4


function rph:health/equalize

scoreboard players set @s rph.health 200
scoreboard players set @s rph.absorption 800