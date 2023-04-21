effect give @s resistance 2 4 true
effect give @s blindness 1 1 true

scoreboard players set @s rph.health 200
scoreboard players set $health_diff_real rph.health 0
scoreboard players set @s rph.one_shot_cooldown 3600

playsound minecraft:entity.warden.death player @a[distance=..8] ~ ~ ~ 1 2
playsound minecraft:entity.player.death player @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 0.5 0.75