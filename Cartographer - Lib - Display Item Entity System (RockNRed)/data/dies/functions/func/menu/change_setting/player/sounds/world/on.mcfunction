
function dies:func/menu/generic_click

scoreboard players set @s dies.option.player.sounds.world 1

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Sounds ","color":"#F5CE54"},{"text":"for World ","color":"#4EF4A9"},{"text":"have been toggled ","color":"#EFDADA"},{"text":"on","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
