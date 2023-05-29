function #minecraft:cartographer/events/enchants_mob_hit/ranged/riptide

scoreboard players set $lvl ca.riptide 0

scoreboard players operation $lvl ca.riptide = @s ca.riptide



execute as @e[type=trident,distance=..5,sort=nearest,limit=1] run function cartographer_custom_enchantments:enchant_effects/riptide/trident_branch

data modify block 4206900 1 4206900 Items set value []
data modify block 4206900 1 4206900 Items append from storage cartographer_custom_enchantments:riptide item

execute if score $lvl ca.riptide matches 1..10 run loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $lvl ca.riptide matches 101..110 run loot replace entity @s weapon.mainhand 1 mine 4206900 1 4206900 air{drop_contents:1b}


stopsound @a[distance=..16] * minecraft:item.trident.throw

execute if score $lvl ca.riptide matches 101.. run scoreboard players remove $lvl ca.riptide 100

execute if score $lvl ca.riptide matches 1 run scoreboard players set $duration ca.riptide 15
execute if score $lvl ca.riptide matches 2 run scoreboard players set $duration ca.riptide 20
execute if score $lvl ca.riptide matches 3 run scoreboard players set $duration ca.riptide 25
execute if score $lvl ca.riptide matches 4 run scoreboard players set $duration ca.riptide 30
execute if score $lvl ca.riptide matches 5 run scoreboard players set $duration ca.riptide 35
execute if score $lvl ca.riptide matches 6 run scoreboard players set $duration ca.riptide 40
execute if score $lvl ca.riptide matches 7 run scoreboard players set $duration ca.riptide 45
execute if score $lvl ca.riptide matches 8 run scoreboard players set $duration ca.riptide 48
execute if score $lvl ca.riptide matches 9 run scoreboard players set $duration ca.riptide 50
execute if score $lvl ca.riptide matches 10.. run scoreboard players set $duration ca.riptide 52

execute if score $lvl ca.riptide matches 1 unless score @s ca.riptide_time matches 1.. run playsound minecraft:item.trident.riptide_1 player @a[distance=..16] ~ ~ ~ 1.5 1
execute if score $lvl ca.riptide matches 2 unless score @s ca.riptide_time matches 1.. run playsound minecraft:item.trident.riptide_2 player @a[distance=..16] ~ ~ ~ 1.5 1
execute if score $lvl ca.riptide matches 3..10 unless score @s ca.riptide_time matches 1.. run playsound minecraft:item.trident.riptide_3 player @a[distance=..16] ~ ~ ~ 1.5 1
execute if score @s ca.riptide_time matches 1.. run playsound minecraft:item.trident.hit_ground player @s ~ ~ ~ 1 0.75

execute unless score @s ca.riptide_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/riptide/dash
