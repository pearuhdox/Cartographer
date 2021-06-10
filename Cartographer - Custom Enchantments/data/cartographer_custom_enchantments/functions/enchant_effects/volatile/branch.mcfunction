execute if score $volatile flame matches 1.. run data merge entity @s {Fire:81}
execute if score $volatile frost matches 1.. run effect give @s slowness 5 1
execute if score $volatile pin_down matches 1.. run effect give @s bad_omen 5 1

execute if score $volatile rend matches 1.. if entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11
execute if score $volatile rend matches 1.. unless entity @s[scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 5

execute if score $volatile conductive matches 1.. run scoreboard players set @s effect_shocked 5
execute if score $volatile decay matches 1.. run scoreboard players set @s effect_infect 5

execute if score $volatile flash matches 1.. run function cartographer_custom_enchantments:enchant_effects/flash

#execute if score $volatile punch matches 1 run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=..6,limit=1,tag=vol_center]
#execute if score $volatile punch matches 2 run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=..6,limit=1,tag=vol_center]
#execute if score $volatile punch matches 3 run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=..6,limit=1,tag=vol_center]
#execute if score $volatile punch matches 4 run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=..6,limit=1,tag=vol_center]
#execute if score $volatile punch matches 5.. run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=..6,limit=1,tag=vol_center]

#execute if score $volatile punch matches 1 at @s run function cartographer_core:helper/push
#execute if score $volatile punch matches 2 at @s run function cartographer_core:helper/push_2
#execute if score $volatile punch matches 3 at @s run function cartographer_core:helper/push_3
#execute if score $volatile punch matches 4 at @s run function cartographer_core:helper/push_4
#execute if score $volatile punch matches 5.. at @s run function cartographer_core:helper/push_5