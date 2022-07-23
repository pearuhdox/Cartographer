execute as @s[scores={ca.effect_cloak=3..},nbt={HurtTime:9s}] at @s run scoreboard players remove @s ca.effect_cloak 3
execute as @s[scores={ca.effect_cloak=1..2},nbt={HurtTime:9s}] at @s run scoreboard players set @s ca.effect_cloak 0

execute as @s[scores={ca.effect_cloak=0},nbt={HurtTime:9s}] at @s run effect clear @s invisibility
execute as @s[scores={ca.effect_cloak=0},nbt={HurtTime:9s}] at @s run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..8] ~ ~ ~ 0.75 2