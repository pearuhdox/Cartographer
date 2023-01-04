particle firework ~ ~1 ~ 0 0 0 0.2 1 normal

scoreboard players operation @s ca.effect_stun = @e[type=#bb:arrow,sort=nearest,limit=1,scores={ca.flash=1..}] ca.flash
particle flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..24] ~ ~ ~ 5 2

tag @s[type=#bb:hostile,tag=is_flash] remove is_flash

function #minecraft:cartographer/events/enchants_mob_hit/ranged/flash