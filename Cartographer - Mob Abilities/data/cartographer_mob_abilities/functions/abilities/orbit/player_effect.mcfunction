scoreboard players operation @s cdl.damage_queue = $orb_damage ca.ability_dmg

scoreboard players set @s cdl.death_id 310202

function cd:lib/player/damage/normal

scoreboard players set @s ca.orbit_timer 20

tag @s add ability_tagged

playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 2 1.5
playsound minecraft:entity.shulker_bullet.hit hostile @a ~ ~ ~ 1 0.5