#writing to temp
data modify storage cartographer_charon:player temp set from storage inv:main inv.all[0]
data remove storage inv:main inv.all[0]

#Apply Vanishing or Shattering
execute if data storage cartographer_charon:player temp.tag{CustomEnchantments:[{id:"curse_shattering"}]} run function cartographer_charon:item_effects/shattering
execute if data storage cartographer_charon:player temp.tag{Enchantments:[{id:"minecraft:vanishing_curse"}]} run function cartographer_charon:item_effects/vanishing


#modify slot
scoreboard players remove $rand_t dt.var 1

#If Drop All Allowed is on, then set the score here to 0
execute if score $drop_all_allowed charon.gmr matches 1.. run scoreboard players set $rand_t dt.var 0

execute if score $rand_t dt.var matches ..0 run function cartographer_charon:inv/never_steal
execute if score $rand_t dt.var matches 1.. run function cartographer_charon:inv/always_steal

#add modified slot to player inventory stack
data modify storage cartographer_charon:player inv append from storage cartographer_charon:player temp

#looping
execute if data storage inv:main inv.all[0] run function cartographer_charon:inv/rec