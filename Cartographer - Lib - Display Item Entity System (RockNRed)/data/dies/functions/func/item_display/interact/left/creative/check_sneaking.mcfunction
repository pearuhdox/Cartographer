
execute if entity @p[advancements={dies:interact/left=true},predicate=bb:is_sneaking] run function dies:func/item_display/interact/left/creative/kill
execute if entity @p[advancements={dies:interact/left=true},predicate=!bb:is_sneaking] run function dies:func/item_display/interact/left/creative/kill
