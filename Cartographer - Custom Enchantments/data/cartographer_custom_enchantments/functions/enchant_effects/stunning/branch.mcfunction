execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute if score $melee stunning matches 1 if score $melee helper_melee matches ..10 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 2 if score $melee helper_melee matches ..20 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 3 if score $melee helper_melee matches ..30 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 4 if score $melee helper_melee matches ..40 run scoreboard players set @s effect_stunned 21
execute if score $melee stunning matches 5.. if score $melee helper_melee matches ..50 run scoreboard players set @s effect_stunned 21