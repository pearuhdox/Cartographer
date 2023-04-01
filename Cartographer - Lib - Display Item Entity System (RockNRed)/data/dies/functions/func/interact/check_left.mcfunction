
execute if data entity @s attack if entity @s[tag=dies.new_item_interaction] run function dies:func/new_item/interact/left
execute if data entity @s attack if entity @s[tag=dies.display_interaction,tag=!cancel_interaction.left] run function dies:func/item_display/interact/left/check_gamemode
execute if data entity @s attack if entity @s[tag=dies.display_interaction,tag=cancel_interaction.left] run function #minecraft:dies/interact_left

data remove entity @s attack
