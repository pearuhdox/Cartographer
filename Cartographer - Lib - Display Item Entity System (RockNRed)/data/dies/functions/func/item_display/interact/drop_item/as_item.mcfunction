
execute if score $gamerule.global.enter_inventory dies.master matches 1 run tp @s @p[advancements={dies:interact/left=true}]

function #minecraft:dies/intercept_item

tag @s remove dies.new_item
