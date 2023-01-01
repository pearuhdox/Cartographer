execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run scoreboard players set @s ca.effect_stun 21

execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run function #minecraft:cartographer/events/enchantments/melee/stunning/proc