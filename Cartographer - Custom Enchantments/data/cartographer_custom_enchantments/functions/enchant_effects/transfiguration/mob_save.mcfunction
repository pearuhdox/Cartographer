data modify storage cartographer_custom_enchantments:transfiguration data set value {}

data modify storage cartographer_custom_enchantments:transfiguration data set from entity @s

data remove storage cartographer_custom_enchantments:transfiguration data.UUID
data remove storage cartographer_custom_enchantments:transfiguration data.Pos


execute if entity @s[type=minecraft:zombie] run scoreboard players set $transfig_id ca.transfig_id 1
execute if entity @s[type=minecraft:husk] run scoreboard players set $transfig_id ca.transfig_id 2
execute if entity @s[type=minecraft:drowned] run scoreboard players set $transfig_id ca.transfig_id 3
execute if entity @s[type=minecraft:skeleton] run scoreboard players set $transfig_id ca.transfig_id 4
execute if entity @s[type=minecraft:stray] run scoreboard players set $transfig_id ca.transfig_id 5
execute if entity @s[type=minecraft:wither_skeleton] run scoreboard players set $transfig_id ca.transfig_id 6
execute if entity @s[type=minecraft:zombified_piglin] run scoreboard players set $transfig_id ca.transfig_id 7
execute if entity @s[type=minecraft:phantom] run scoreboard players set $transfig_id ca.transfig_id 8
execute if entity @s[type=minecraft:spider] run scoreboard players set $transfig_id ca.transfig_id 9
execute if entity @s[type=minecraft:cave_spider] run scoreboard players set $transfig_id ca.transfig_id 10
execute if entity @s[type=minecraft:silverfish] run scoreboard players set $transfig_id ca.transfig_id 11
execute if entity @s[type=minecraft:endermite] run scoreboard players set $transfig_id ca.transfig_id 12
execute if entity @s[type=minecraft:creeper] run scoreboard players set $transfig_id ca.transfig_id 13
execute if entity @s[type=minecraft:enderman] run scoreboard players set $transfig_id ca.transfig_id 14
execute if entity @s[type=minecraft:blaze] run scoreboard players set $transfig_id ca.transfig_id 15
execute if entity @s[type=minecraft:slime] run scoreboard players set $transfig_id ca.transfig_id 16
execute if entity @s[type=minecraft:magma_cube] run scoreboard players set $transfig_id ca.transfig_id 17
execute if entity @s[type=minecraft:ghast] run scoreboard players set $transfig_id ca.transfig_id 18
execute if entity @s[type=minecraft:vindicator] run scoreboard players set $transfig_id ca.transfig_id 19
execute if entity @s[type=minecraft:evoker] run scoreboard players set $transfig_id ca.transfig_id 20
execute if entity @s[type=minecraft:pillager] run scoreboard players set $transfig_id ca.transfig_id 21
execute if entity @s[type=minecraft:vex] run scoreboard players set $transfig_id ca.transfig_id 22
execute if entity @s[type=minecraft:ravager] run scoreboard players set $transfig_id ca.transfig_id 23
execute if entity @s[type=minecraft:guardian] run scoreboard players set $transfig_id ca.transfig_id 24
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players set $transfig_id ca.transfig_id 25
execute if entity @s[type=minecraft:shulker] run scoreboard players set $transfig_id ca.transfig_id 26
execute if entity @s[type=minecraft:zombie_villager] run scoreboard players set $transfig_id ca.transfig_id 27
execute if entity @s[type=minecraft:bee] run scoreboard players set $transfig_id ca.transfig_id 28
execute if entity @s[type=minecraft:piglin] run scoreboard players set $transfig_id ca.transfig_id 29
execute if entity @s[type=minecraft:piglin_brute] run scoreboard players set $transfig_id ca.transfig_id 30
execute if entity @s[type=minecraft:hoglin] run scoreboard players set $transfig_id ca.transfig_id 31
execute if entity @s[type=minecraft:zoglin] run scoreboard players set $transfig_id ca.transfig_id 32
execute if entity @s[type=minecraft:illusioner] run scoreboard players set $transfig_id ca.transfig_id 33
execute if entity @s[type=minecraft:wolf] run scoreboard players set $transfig_id ca.transfig_id 34
execute if entity @s[type=minecraft:rabbit] run scoreboard players set $transfig_id ca.transfig_id 35
execute if entity @s[type=minecraft:iron_golem] run scoreboard players set $transfig_id ca.transfig_id 36

tp @s ~ -100 ~