data modify storage inv:main inv set value {}
data modify storage inv:main inv.all set value []
scoreboard objectives add Inventory dummy

forceload add 0 0
setblock 4206900 77 4206900 minecraft:shulker_box
