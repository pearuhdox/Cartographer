#Always take an Always Steal tag
execute if data storage cartographer_charon:player temp.tag{AlwaysSteal:1b} run function cartographer_charon:inv/modify_slot

#Always take shulker boxes if the rule is enabled.
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:white_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:orange_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:magenta_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:light_blue_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:yellow_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:lime_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:pink_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:gray_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:light_gray_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:cyan_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:purple_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:blue_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:brown_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:green_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:red_shulker_box"} run function cartographer_charon:inv/modify_slot
execute if score $always_drop_boxes charon.gmr matches 1 if data storage cartographer_charon:player temp{id:"minecraft:black_shulker_box"} run function cartographer_charon:inv/modify_slot