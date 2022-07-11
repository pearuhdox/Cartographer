scoreboard players set @s ca.effect_stun 21
execute if entity @s[type=wither_skeleton] run scoreboard players set @s cdl.damage_queue 20
execute if entity @s[type=magma_cube] run scoreboard players set @s cdl.damage_queue 10
function cd:lib/mob/damage/true