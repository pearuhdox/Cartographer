#writing to temp
data modify storage cartographer_charon:player temp set from storage inv:main inv.all[0]
data remove storage inv:main inv.all[0]

#Apply Vanishing or Shattering
execute if data storage cartographer_charon:player temp.tag{CustomEnchantments:[{id:"curse_shattering"}]} run function cartographer_charon:item_effects/shattering
execute if data storage cartographer_charon:player temp.tag{Enchantments:[{id:"minecraft:vanishing_curse"}]} run function cartographer_charon:item_effects/vanishing


#modify slot
scoreboard players remove $rand_t dt.var 1
execute if score $rand_t dt.var matches ..0 unless data storage cartographer_charon:player temp.tag{NoSteal:1b} unless data storage cartographer_charon:player temp.tag{CustomEnchantments:[{id:"soulbound"}]} unless data storage cartographer_charon:player temp{id:"minecraft:emerald"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp.tag{AlwaysSteal:1b} run function cartographer_charon:inv/modify_slot

execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:gray_wool"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:white_wool"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:cyan_wool"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:red_wool"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:blue_wool"} run function cartographer_charon:inv/modify_slot
execute if score $rand_t dt.var matches 1.. if data storage cartographer_charon:player temp{id:"minecraft:green_wool"} run function cartographer_charon:inv/modify_slot

#add modified slot to player inventory stack
data modify storage cartographer_charon:player inv append from storage cartographer_charon:player temp

#looping
execute if data storage inv:main inv.all[0] run function cartographer_charon:inv/rec