function inv:internal/sort

data modify block 4206900 77 4206900 Items set from storage inv:main inv.inventory
loot replace entity @s inventory.0 mine 4206900 77 4206900 mainhand

data modify block 4206900 77 4206900 Items set from storage inv:main inv.hotbar
loot replace entity @s hotbar.0 9 mine 4206900 77 4206900 mainhand

data modify block 4206900 77 4206900 Items set from storage inv:main inv.armor
loot replace entity @s armor.feet 4 mine 4206900 77 4206900 mainhand

data modify block 4206900 77 4206900 Items set from storage inv:main inv.offhand
loot replace entity @s weapon.offhand 1 mine 4206900 77 4206900 mainhand