playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.4 0.5

setblock ~ ~ ~ minecraft:fire keep
setblock ~1 ~ ~ minecraft:fire keep
setblock ~-1 ~ ~ minecraft:fire keep
setblock ~ ~ ~1 minecraft:fire keep
setblock ~ ~ ~-1 minecraft:fire keep

scoreboard players set $fire ca.dmg_type 1