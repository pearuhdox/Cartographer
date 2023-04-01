scoreboard players remove @s ca.heal_bank_hp 1000

particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 1 force
scoreboard players add @s bbl.heal_queue 1
function bb:call/hpm/player/heal