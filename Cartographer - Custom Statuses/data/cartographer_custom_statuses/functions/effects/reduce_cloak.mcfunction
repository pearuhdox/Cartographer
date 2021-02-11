execute as @s[scores={effect_cloaked=3..},nbt={HurtTime:9s}] at @s run scoreboard players remove @s effect_cloaked 3
execute as @s[scores={effect_cloaked=1..2},nbt={HurtTime:9s}] at @s run scoreboard players set @s effect_cloaked 0

execute as @s[scores={effect_cloaked=0},nbt={HurtTime:9s}] at @s run effect clear @s invisibility
execute as @s[scores={effect_cloaked=0},nbt={HurtTime:9s}] at @s run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..8] ~ ~ ~ 0.75 2