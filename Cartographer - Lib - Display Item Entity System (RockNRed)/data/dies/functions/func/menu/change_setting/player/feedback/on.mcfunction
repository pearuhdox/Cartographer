
function dies:func/menu/generic_click

scoreboard players set @s dies.option.player.action_feedback 1

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Action bar feedback ","color":"#F5CE54"},{"text":"like this ","color":"#4EF4A9"},{"text":"has been toggled ","color":"#EFDADA"},{"text":"on","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
