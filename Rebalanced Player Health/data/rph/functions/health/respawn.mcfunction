function rph:health/calculate_max/start

scoreboard players operation @s rph.health = @s rph.health_max

function rph:health/equalize

scoreboard players set @s rph.one_shot_cooldown 0
scoreboard players set @s rph.mana 20
scoreboard players set @s rph.absorption 0