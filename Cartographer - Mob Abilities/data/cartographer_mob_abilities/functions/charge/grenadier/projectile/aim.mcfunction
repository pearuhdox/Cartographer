#Counterbalance g_rot by subtracting 90
scoreboard players add $g_rot ca.aim 90

#Randomize Accuracy of Rotation by adding/subtracting from g_rot
scoreboard players set in math 0
scoreboard players set in1 math 40

function cartographer_core:helper/math/rng/range

scoreboard players operation $acc_off ca.aim = out math
scoreboard players remove $acc_off ca.aim 20

scoreboard players operation $g_rot ca.aim += $acc_off ca.aim

#R Value
scoreboard players set in math 60
scoreboard players set in1 math 120

function cartographer_core:helper/math/rng/range

scoreboard players operation $r_val ca.aim = out math

#Get the Cosine of g_rot
scoreboard players operation in math = $g_rot ca.aim
function cartographer_core:helper/math/trig/cos
scoreboard players operation $cos_val ca.aim = out math


#Get the Sine of g_rot
scoreboard players operation in math = $g_rot ca.aim
function cartographer_core:helper/math/trig/sin
scoreboard players operation $sin_val ca.aim = out math

#Create Cartesian Distances
scoreboard players operation $x_mot ca.aim = $r_val ca.aim
scoreboard players operation $z_mot ca.aim = $r_val ca.aim

scoreboard players operation $x_mot ca.aim *= $cos_val ca.aim
scoreboard players operation $z_mot ca.aim *= $sin_val ca.aim

#Apply Cartesian Motion to Projectile
execute store result entity @s Motion[0] double 0.00001 run scoreboard players add $x_mot ca.aim 0
execute store result entity @s Motion[2] double 0.00001 run scoreboard players add $z_mot ca.aim 0

#Y Movement
scoreboard players set in math 6
scoreboard players set in1 math 10

function cartographer_core:helper/math/rng/range

scoreboard players operation @s ca.aim = out math
execute store result entity @s Motion[1] double 0.1 run scoreboard players add @s ca.aim 0

#Transfer parent tags over to AEC
data modify entity @s Tags set from storage cartographer_mob_abilities:info grenadier.Tags

#Transfer damage amount over to AEC
scoreboard players operation @s ca.ability_dmg = $grenadier_damage ca.ability_dmg

execute if entity @s[tag=ca.blazing] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2105963268,-93173279,-1568118406,1332780703],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY1MzU0Y2EyZWUxYjhmZGM5NTViYjQzN2JiMjYxOTU3NWZjNzk4M2YzNjlhZmEzYTFmN2QxYjk3NTY3ZWE4In19fQ=="}]}}}}
execute if entity @s[tag=ca.glacial] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1621761885,420563628,-1988687145,1381854084],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGRiYTY0MmVmZmZhMTNlYzM3MzBlYWZjNTkxNGFiNjgxMTVjMWY5OTg4MDNmNzQ0NTJlMmUwY2QyNmFmMGI4In19fQ=="}]}}}}
execute if entity @s[tag=ca.horrifying] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;240412329,670386103,-1853658351,-1344448741],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhjZWI4NjMxYWRkN2NiYjU2NWRjYjcwNWYxMjEyMzQ5Y2NjZDc1NTk2NWM0NmE5MjI4NTJjOWZkOTQ4YjRiYiJ9fX0="}]}}}}
execute if entity @s[tag=ca.overloading] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-497262744,1908819480,-1557314868,888921618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc0MDBlYTE5ZGJkODRmNzVjMzlhZDY4MjNhYzRlZjc4NmYzOWY0OGZjNmY4NDYwMjM2NmFjMjliODM3NDIyIn19fQ=="}]}}}}
execute if entity @s[tag=ca.venemous] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;230629621,837109324,-1330587645,-865550672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTVhZGU5MjcxNTg3ZTlmY2Y2NWYwZTA4YjMzM2YyNWZiOWRmOTlmYjRmNDJhZDBmODZmYjM1NTExNmU5OGIzZSJ9fX0="}]}}}}
execute if entity @s[tag=ca.zephyrous] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1692525654,-1637072104,-1690245337,-788445021],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg0YTY4ZmQ3YjYyOGQzMDk2NjdkYjdhNTU4NTViNTRhYmMyM2YzNTk1YmJlNDMyMTYyMTFiZTVmZTU3MDE0In19fQ=="}]}}}}
execute if entity @s[tag=ca.volatile] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2108940611,120472760,-1665635429,1472141395],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVlYmI4YjAzY2QyN2QzNDM1ZTExNTYxNmI4ZWQzNWRjYjQyN2FmNWIwYjFjYzUyNmQzMjY1YTcyZDQ5M2UifX19"}]}}}}

tag @s add aimed