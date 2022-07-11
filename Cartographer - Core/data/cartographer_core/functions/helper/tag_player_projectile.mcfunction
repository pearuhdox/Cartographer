########################################
# File: Cartographer Core - Tag Player Projectile
#
# Author: PearUhDox | Date: 8/24/2021
#
# Description: Tag projectiles with lifetime 1
########################################

scoreboard players set @e[type=#bb:projectile,distance=..5,sort=nearest,limit=3] ca.lifetime 1

scoreboard players set @s ca.shoot_bow 0
scoreboard players set @s ca.shoot_cross 0
scoreboard players set @s ca.throw_trident 0