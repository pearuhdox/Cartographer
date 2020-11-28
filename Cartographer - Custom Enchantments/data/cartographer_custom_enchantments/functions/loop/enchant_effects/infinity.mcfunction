execute if entity @s[scores={infinity_m=1}] run data modify block 4206899 0 4206900 Items append from entity @e[type=item,limit=1,sort=nearest,tag=infinity_storage_m] Item
execute if entity @s[scores={infinity_o=1}] run data modify block 4206900 0 4206899 Items append from entity @e[type=item,limit=1,sort=nearest,tag=infinity_storage_o] Item

execute if entity @s[scores={infinity_m=1}] as @s run loot replace entity @s weapon.mainhand 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={infinity_o=1}] as @s run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206899 air{drop_contents:1b}