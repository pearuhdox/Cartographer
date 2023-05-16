execute if score @s ca.inf_kc_0 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:0b}]
execute if score @s ca.inf_kc_1 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:1b}]
execute if score @s ca.inf_kc_2 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:2b}]
execute if score @s ca.inf_kc_3 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:3b}]
execute if score @s ca.inf_kc_4 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:4b}]
execute if score @s ca.inf_kc_5 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:5b}]
execute if score @s ca.inf_kc_6 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:6b}]
execute if score @s ca.inf_kc_7 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:7b}]
execute if score @s ca.inf_kc_8 matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:8b}]

execute if score @s ca.inf_kc_o matches 1 run data modify storage cartographer_custom_enchantments:infinity_transform item set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_custom_enchantments:infinity_transform item set from storage cartographer_custom_enchantments:infinity_transform item.tag.StoredItem
data modify storage cartographer_custom_enchantments:infinity_transform item.Slot set value 0b

data modify storage cartographer_custom_enchantments:infinity_transform item.Slot set value 0b

data modify block 4206899 0 4206900 Items set value []
data modify block 4206899 0 4206900 Items append from storage cartographer_custom_enchantments:infinity_transform item


execute if score @s ca.inf_kc_0 matches 1 run loot replace entity @s hotbar.0 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_1 matches 1 run loot replace entity @s hotbar.1 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_2 matches 1 run loot replace entity @s hotbar.2 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_3 matches 1 run loot replace entity @s hotbar.3 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_4 matches 1 run loot replace entity @s hotbar.4 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_5 matches 1 run loot replace entity @s hotbar.5 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_6 matches 1 run loot replace entity @s hotbar.6 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_7 matches 1 run loot replace entity @s hotbar.7 1 mine 4206899 0 4206900 air{drop_contents:1b}
execute if score @s ca.inf_kc_8 matches 1 run loot replace entity @s hotbar.8 1 mine 4206899 0 4206900 air{drop_contents:1b}

execute if score @s ca.inf_kc_o matches 1 run loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 air{drop_contents:1b}

playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 1.2
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.1 1.2
