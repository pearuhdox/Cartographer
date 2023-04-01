
execute if entity @p[advancements={dies:interact/right=true},predicate=bb:is_sneaking] run function dies:func/item_display/interact/right/creative/check_selected
execute if entity @p[advancements={dies:interact/right=true},predicate=!bb:is_sneaking] on vehicle run function dies:func/update_rotation/main
