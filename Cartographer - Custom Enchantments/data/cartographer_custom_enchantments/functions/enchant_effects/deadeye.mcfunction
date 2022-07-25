playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 1.5

kill @e[type=#bb:arrow,limit=3,sort=nearest]

scoreboard players set $deadeye_mark ca.var 0

scoreboard players set $deadeye ca.expose 0
scoreboard players set $deadeye ca.bleed 0
scoreboard players set $deadeye ca.electrode 0
scoreboard players set $deadeye ca.frost 0
scoreboard players set $deadeye ca.flame 0
scoreboard players set $deadeye ca.flash 0
scoreboard players set $deadeye ca.infect 0
scoreboard players set $deadeye ca.trueshot 0
scoreboard players set $deadeye ca.curse_encum 0
scoreboard players set $deadeye ca.multishot 0

execute if score @s ca.expose matches 1 run scoreboard players set $deadeye ca.expose 1
execute if score @s ca.bleed matches 1 run scoreboard players set $deadeye ca.bleed 1
execute if score @s ca.electrode matches 1 run scoreboard players set $deadeye ca.electrode 1
execute if score @s ca.frost matches 1 run scoreboard players set $deadeye ca.frost 1
execute if score @s ca.flame matches 1 run scoreboard players set $deadeye ca.flame 1
execute if score @s ca.flash matches 1 run scoreboard players set $deadeye ca.flash 1
execute if score @s ca.infect matches 1 run scoreboard players set $deadeye ca.infect 1
execute if score @s ca.trueshot matches 1 run scoreboard players set $deadeye ca.trueshot 1
execute if score @s ca.curse_encum matches 1 run scoreboard players set $deadeye ca.curse_encum 1
execute if score @s ca.multishot matches 1 run scoreboard players set $deadeye ca.multishot 1

#Find an enemy within a "vision cone" of the player
execute unless score $deadeye ca.trueshot matches 1.. positioned ^ ^ ^7 as @e[type=#bb:hostile,distance=..7] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/marking
execute if score $deadeye ca.trueshot matches 1.. positioned ^ ^ ^13 as @e[type=#bb:hostile,distance=..26] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/marking

scoreboard players set @s ca.raycast 13
execute if score $deadeye ca.trueshot matches 1.. run scoreboard players set @s ca.raycast 26
execute if score $deadeye ca.curse_encum matches 1.. run scoreboard players set @s ca.raycast 8

execute if score $deadeye_mark ca.var matches 1.. anchored eyes facing entity @e[type=#bb:hostile,limit=1,sort=random,distance=..26,tag=deadeye_marked] eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
execute unless score $deadeye_mark ca.var matches 1.. anchored eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast


scoreboard players set @s ca.raycast 13
execute if score $deadeye ca.trueshot matches 1.. run scoreboard players set @s ca.raycast 26
execute if score $deadeye ca.curse_encum matches 1.. run scoreboard players set @s ca.raycast 8

execute if score $deadeye_mark ca.var matches 1.. if score @s ca.multishot matches 1.. positioned ^2 ^ ^0.5 anchored eyes facing entity @e[type=#bb:hostile,limit=1,sort=random,distance=..26,tag=deadeye_marked] eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
execute unless score $deadeye_mark ca.var matches 1.. if score @s ca.multishot matches 1.. positioned ^2 ^ ^0.5 anchored eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast


scoreboard players set @s ca.raycast 13
execute if score $deadeye ca.trueshot matches 1.. run scoreboard players set @s ca.raycast 26
execute if score $deadeye ca.curse_encum matches 1.. run scoreboard players set @s ca.raycast 8

execute if score $deadeye_mark ca.var matches 1.. if score @s ca.multishot matches 1.. positioned ^-2 ^ ^0.5 anchored eyes facing entity @e[type=#bb:hostile,limit=1,sort=random,distance=..26,tag=deadeye_marked] eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
execute unless score $deadeye_mark ca.var matches 1.. if score @s ca.multishot matches 1.. positioned ^-2 ^ ^0.5 anchored eyes positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast

#execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] as @e[tag=deadeye_aim,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/bullet
#execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] as @e[tag=deadeye_multi,limit=7,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_bullet
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] as @e[tag=deadeye_multi,limit=7,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_bullet
