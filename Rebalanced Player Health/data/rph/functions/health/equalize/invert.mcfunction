scoreboard players operation $health_diff rph.health *= $-1 rph.health
scoreboard players operation @s bbl.damage_queue = $health_diff rph.health

function bb:call/hpm/player/damage/true