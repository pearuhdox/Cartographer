#Runs the grenade projectile passive
scoreboard players set @s ca.sc_time 1

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

execute anchored eyes run particle minecraft:sonic_boom ^ ^ ^1 0 0 0 1 1 force

playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..24] ~ ~ ~ 1.2 0.8

kill @e[type=#bb:projectile,tag=!passive_replaced_projectile,limit=3,distance=..4,sort=nearest]