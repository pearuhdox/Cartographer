scoreboard players set $random ca.legion_id 0

scoreboard players set $undead ca.legion_id 0
scoreboard players set $arthro ca.legion_id 0
scoreboard players set $human ca.legion_id 0
scoreboard players set $monster ca.legion_id 0

scoreboard players set $fiery ca.legion_id 0

execute if entity @s[type=#bb:undead] run scoreboard players set $undead ca.legion_id 1
execute if entity @s[type=#bb:arthropod] run scoreboard players set $arthro ca.legion_id 1
execute if entity @s[type=#bb:humanoid] run scoreboard players set $human ca.legion_id 1
execute if entity @s[type=#bb:monstrous] run scoreboard players set $monster ca.legion_id 1
execute if entity @s[type=#bb:fiery] run scoreboard players set $fiery ca.legion_id 1

summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:0b,Tags:["legion_spawn"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:0b,Tags:["legion_spawn"]}

execute as @e[type=armor_stand,tag=legion_spawn,limit=2,sort=nearest,distance=..2] at @s run function cartographer_mob_abilities:ability_traits/legionary/spread_allies