summon item ~ ~1.25 ~ {NoGravity:1b,Silent:1b,Glowing:1b,CustomNameVisible:1b,Age:5900,PickupDelay:32767,CustomName:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] to View Options","color":"white","italic":false}]',Item:{id:"minecraft:lodestone",Count:1b}}

data modify storage cartographer_loot_additions:multichoice_trade Trades set from entity @s Offers.Recipes

execute as @e[type=#cartographer_core:item_frames,tag=loot_multichoice_side,limit=4,sort=nearest,distance=..2.5] at @s run function cartographer_loot_additions:multichoice/make_trade

data modify entity @s Offers.Recipes set from storage cartographer_loot_additions:multichoice_trade Trades

tag @s add trades_shown

particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100 normal
particle minecraft:campfire_cosy_smoke ~ ~1.25 ~ 0.15 0 0.15 0.05 5 normal
particle minecraft:sneeze ~ ~2.5 ~ 0.1 0.5 0.1 0.05 15 normal

playsound minecraft:entity.wandering_trader.reappeared block @a[distance=..16] ~ ~ ~ 1 0.75
playsound minecraft:block.stem.place block @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.stem.place block @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.iron_door.open block @a[distance=..16] ~ ~ ~ 1 0.75
