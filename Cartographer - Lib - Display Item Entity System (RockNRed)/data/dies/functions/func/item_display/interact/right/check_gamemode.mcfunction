
execute if entity @p[advancements={dies:interact/right=true},gamemode=creative] run function dies:func/item_display/interact/right/creative/check_sneaking
execute if entity @p[advancements={dies:interact/right=true},gamemode=survival] run function dies:func/item_display/interact/right/survival/check_sneaking
execute if entity @p[advancements={dies:interact/right=true},gamemode=adventure] run function dies:func/item_display/interact/right/adventure/check_sneaking
