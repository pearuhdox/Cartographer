scoreboard players set @s cdl.heal_queue 1
function cd:lib/player/heal
particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 1 force
scoreboard players remove @s ca.regen_bank 100