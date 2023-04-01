
execute if entity @p[advancements={dies:interact/left=true},gamemode=creative] run function dies:func/item_display/interact/left/creative/check_sneaking
execute if entity @p[advancements={dies:interact/left=true},gamemode=survival] run function dies:func/item_display/interact/left/survival/check_sneaking
execute if entity @p[advancements={dies:interact/left=true},gamemode=adventure] run function dies:func/item_display/interact/left/adventure/check_sneaking
