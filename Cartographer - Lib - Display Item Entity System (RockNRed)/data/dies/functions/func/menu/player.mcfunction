
function dies:func/menu/generic_click

#Clear chat
function bb:lib/chat_spam

#Pop-up menu
tellraw @s {"text":"*d.i.e.s.*","color":"#F5CE54"}
tellraw @s {"text":"player settings","color":"#4EF4A9"}
tellraw @s {"text":"These settings only apply to you.","color":"#EFDADA"}
function dies:func/menu/lines/return/global
function dies:func/menu/lines/return/individual
function bb:lib/chat/blank_line

tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle sounds for actions in the menus, effectively just the clicking noises.","color":"#EFDADA"}]}},{"text":"GUI Sounds:\n","color":"#EFDADA"},{"text":"[On (Default)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/sounds/gui/on"}},{"text":"[Off] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/sounds/gui/off"}}]

tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle sounds for actions in the world, such as placing and breaking items.","color":"#EFDADA"}]}},{"text":"World Sounds:\n","color":"#EFDADA"},{"text":"[On (Default)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/sounds/world/on"}},{"text":"[Off] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/sounds/world/off"}}]

tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle feedback in the action bar for changing settings.","color":"#EFDADA"}]}},{"text":"Settings Change Feedback:\n","color":"#EFDADA"},{"text":"[On (Default)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/feedback/on"}},{"text":"[Off] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/player/feedback/off"}}]

