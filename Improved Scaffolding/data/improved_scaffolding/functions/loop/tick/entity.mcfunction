execute if entity @s[type=item] run function improved_scaffolding:loop/tick/item_branch

execute if score $check_falling ims.var matches 1.. if entity @s[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run function improved_scaffolding:place/airborne