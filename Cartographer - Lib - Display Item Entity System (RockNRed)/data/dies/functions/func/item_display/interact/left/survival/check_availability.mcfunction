
execute on vehicle unless entity @s[tag=no_pickup] unless entity @s[tag=no_drop] if entity @p[advancements={dies:interact/left=true}] run function dies:func/item_display/interact/left/survival/check_drop_mode
execute on vehicle unless entity @s[tag=no_pickup] if entity @s[tag=no_drop] run function dies:func/kill_stack/from_vehicle
execute on vehicle if entity @s[tag=no_pickup] if entity @p[advancements={dies:interact/left=true}] run function #minecraft:dies/failed_to_pickup_item
