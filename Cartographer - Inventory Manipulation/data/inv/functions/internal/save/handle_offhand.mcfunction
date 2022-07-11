execute store result storage inv:main inv.new[0].Slot byte 1 run scoreboard players add slot Inventory 106

data modify storage inv:main inv.offhand append from storage inv:main inv.new[0]
data remove storage inv:main inv.new[0]

function inv:internal/save/slot
execute if data storage inv:main inv.new[0] run function inv:internal/save/sort_all
