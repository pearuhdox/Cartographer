# Prepare
data modify storage inv:main inv.new set from storage inv:main inv.all
function inv:internal/save/slot
execute store result score count Inventory run data get storage inv:main inv.new

# Sort
function inv:internal/save/sort_all

# Reset
data remove storage inv:main inv.new