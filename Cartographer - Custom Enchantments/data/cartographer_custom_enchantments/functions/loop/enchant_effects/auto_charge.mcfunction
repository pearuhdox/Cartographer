execute if entity @s[scores={auto_charge=1}] run data modify storage item:load path set from entity @s Inventory[{Slot:0b}]
execute if entity @s[scores={auto_charge=2}] run data modify storage item:load path set from entity @s Inventory[{Slot:1b}]
execute if entity @s[scores={auto_charge=3}] run data modify storage item:load path set from entity @s Inventory[{Slot:2b}]
execute if entity @s[scores={auto_charge=4}] run data modify storage item:load path set from entity @s Inventory[{Slot:3b}]
execute if entity @s[scores={auto_charge=5}] run data modify storage item:load path set from entity @s Inventory[{Slot:4b}]
execute if entity @s[scores={auto_charge=6}] run data modify storage item:load path set from entity @s Inventory[{Slot:5b}]
execute if entity @s[scores={auto_charge=7}] run data modify storage item:load path set from entity @s Inventory[{Slot:6b}]
execute if entity @s[scores={auto_charge=8}] run data modify storage item:load path set from entity @s Inventory[{Slot:7b}]
execute if entity @s[scores={auto_charge=9}] run data modify storage item:load path set from entity @s Inventory[{Slot:8b}]
execute if entity @s[scores={auto_charge=10}] run data modify storage item:load path set from entity @s Inventory[{Slot:-106b}]

data modify storage item:load path.Slot set value 0b
data modify block 4206901 0 4206900 Items append from storage item:load path

data modify block 4206901 0 4206900 Items[0].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute if block 4206901 0 4206900 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206900 Items[0].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}

execute if entity @s[scores={auto_charge=1}] run loot replace entity @s hotbar.0 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=2}] run loot replace entity @s hotbar.1 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=3}] run loot replace entity @s hotbar.2 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=4}] run loot replace entity @s hotbar.3 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=5}] run loot replace entity @s hotbar.4 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=6}] run loot replace entity @s hotbar.5 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=7}] run loot replace entity @s hotbar.6 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=8}] run loot replace entity @s hotbar.7 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=9}] run loot replace entity @s hotbar.8 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={auto_charge=10}] run loot replace entity @s weapon.offhand 1 mine 4206901 0 4206900 air{drop_contents:1b}

execute at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 0.8