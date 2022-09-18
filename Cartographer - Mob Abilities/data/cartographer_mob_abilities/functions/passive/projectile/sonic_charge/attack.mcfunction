scoreboard players set @s ca.raycast 16

playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..24] ~ ~ ~ 1.5 1.5

effect give @s blindness 2 0 

execute store result score $projectile_damage ca.ability_dmg run attribute @s generic.attack_damage get

execute anchored eyes facing entity @p eyes positioned ^ ^ ^ run function cartographer_mob_abilities:passive/projectile/sonic_charge/raycast

scoreboard players set @s ca.sc_time 0