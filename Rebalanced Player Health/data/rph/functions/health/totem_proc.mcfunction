effect give @s instant_damage 11 99 true
effect give @s slowness 1 9 true
effect give @s blindness 2 0 true
effect give @s weakness 1 9 true

playsound minecraft:entity.warden.death player @a[distance=..8] ~ ~ ~ 1 2
playsound minecraft:entity.player.death player @a[distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 0.5 0.75

scoreboard players set @s rph.health 200

scoreboard players set @s rph.freeze 13