playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 1.5

kill @e[type=#bb:arrow,limit=3,sort=nearest,distance=..6,nbt=!{inGround:1b}]

scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0
execute if entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_effects/save/mainhand
execute if entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_status/save/mainhand

execute if entity @s[tag=ca.deadeye_offhand] unless entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_effects/save/offhand
execute if entity @s[tag=ca.deadeye_offnhand] unless entity @s[tag=ca.deadeye_mainhand] run function cartographer_custom_statuses:apply_status/save/offhand

scoreboard players set $frost ca.deadeye 0
scoreboard players set $flame ca.deadeye 0

scoreboard players set $trueshot ca.deadeye 0
scoreboard players set $curse_encum ca.deadeye 0

scoreboard players set $multishot ca.deadeye 0
scoreboard players set $piercing ca.deadeye 0

scoreboard players set $power ca.deadeye 0
scoreboard players set $punch ca.deadeye 0

scoreboard players set $sharpshot ca.multishot 0
scoreboard players set $point_blank ca.multishot 0


scoreboard players operation $frost ca.deadeye = @s ca.frost
scoreboard players operation $flame ca.deadeye = @s ca.flame

scoreboard players operation $trueshot ca.deadeye = @s ca.trueshot
scoreboard players operation $curse_encum ca.deadeye = @s ca.curse_encum

scoreboard players operation $multishot ca.deadeye = @s ca.multishot
scoreboard players operation $piercing ca.deadeye = @s ca.piercing

scoreboard players operation $power ca.deadeye = @s ca.power
scoreboard players operation $punch ca.deadeye = @s ca.punch

scoreboard players operation $sharpshot ca.deadeye = @s ca.sharpshot
scoreboard players operation $point_blank ca.deadeye = @s ca.point_blank

execute as @s at @s anchored eyes positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/create

function #minecraft:cartographer/events/enchantments/ranged/deadeye