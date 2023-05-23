playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

setblock ~ ~ ~ minecraft:fire keep

execute if score $global helper_diff matches 2.. run setblock ~1 ~ ~ minecraft:fire keep
execute if score $global helper_diff matches 2.. run setblock ~-1 ~ ~ minecraft:fire keep
execute if score $global helper_diff matches 2.. run setblock ~ ~ ~1 minecraft:fire keep
execute if score $global helper_diff matches 2.. run setblock ~ ~ ~-1 minecraft:fire keep

execute if score $global helper_diff matches 3.. run setblock ~2 ~ ~ minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~-2 ~ ~ minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~ ~ ~2 minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~ ~ ~-2 minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~1 ~ ~1 minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~-1 ~ ~1 minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~1 ~ ~-1 minecraft:fire keep
execute if score $global helper_diff matches 3.. run setblock ~-1 ~ ~-1 minecraft:fire keep


scoreboard players set $fire ca.dmg_type 1