#Never Steal Emeralds (Default Currency for Charon Traders) NoSteal items, or Soulbound items
execute if data storage cartographer_charon:player temp.tag{NoSteal:1b} run scoreboard players set $rand_t dt.var 1
execute if data storage cartographer_charon:player temp{id:"minecraft:emerald"} run scoreboard players set $rand_t dt.var 1
execute if data storage cartographer_charon:player temp.tag{CustomEnchantments:[{id:"soulbound"}]} run scoreboard players set $rand_t dt.var 1

#Never Steal Offhand/Armor/Hotbar (if enabled)
execute if score $never_drop_offhand charon.gmr matches 1.. if data storage cartographer_charon:player temp{Slot:-106b} run scoreboard players set $rand_t dt.var 1

scoreboard players set $slot dt.var -1
execute if score $never_drop_armor charon.gmr matches 1.. store result score $slot dt.var run data get storage cartographer_charon:player temp.Slot
execute if score $never_drop_hotbar charon.gmr matches 1.. store result score $slot dt.var run data get storage cartographer_charon:player temp.Slot
execute if score $never_drop_backpack charon.gmr matches 1.. store result score $slot dt.var run data get storage cartographer_charon:player temp.Slot

execute if score $never_drop_armor charon.gmr matches 1.. if score $slot dt.var matches 100..103 run scoreboard players set $rand_t dt.var 1
execute if score $never_drop_hotbar charon.gmr matches 1.. if score $slot dt.var matches 0..8 run scoreboard players set $rand_t dt.var 1
execute if score $never_drop_backpack charon.gmr matches 1.. if score $slot dt.var matches 9..36 run scoreboard players set $rand_t dt.var 1

#Modify the slot if not set to never steal
execute if score $rand_t dt.var matches ..0 run function cartographer_charon:inv/modify_slot