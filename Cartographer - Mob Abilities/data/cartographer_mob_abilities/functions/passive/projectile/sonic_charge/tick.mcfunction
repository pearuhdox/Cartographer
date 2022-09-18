scoreboard players add @s ca.sc_time 1

particle sculk_charge 0 ~ ~ ~ 0.5 0.5 0.5 0.1 2 normal

execute if score @s ca.sc_time matches 40 run function cartographer_mob_abilities:passive/projectile/sonic_charge/attack