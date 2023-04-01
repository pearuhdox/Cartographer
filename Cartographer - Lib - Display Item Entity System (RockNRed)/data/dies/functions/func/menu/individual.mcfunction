
function dies:func/menu/generic_click

#Clear chat
function bb:lib/chat_spam

execute as @e[tag=dies.selected_display,distance=..11] at @s run function dies:func/menu/cache/scan

execute if entity @s[tag=dies.option_overwrite] run function dies:func/menu/cache/overwrite

#Pop-up menu
tellraw @s {"text":"*d.i.e.s.*","color":"#F5CE54"}
tellraw @s {"text":"individual item settings","color":"#4EF4A9"}
tellraw @s {"text":"Only one person can have a frame selected in a 12 block radius.","color":"#EFDADA"}
tellraw @s {"text":"A circling lavender highlight indicates which is selected.","color":"#EFDADA"}
function dies:func/menu/lines/open/global
function dies:func/menu/lines/open/player
function bb:lib/chat/blank_line

#Item type
tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"The item given to the player upon activating this.","color":"#EFDADA"}]}},{"text":"Item:\n","color":"#EFDADA"},{"text":"[Item From Hand] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/item/hand"}},{"text":"[Loot Table (From Held Spawn Egg)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/item/loottable"}}]

#Loot table displayed item
execute if score $cache.item_type dies.master matches 2 run tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"The item rendered for this loot table.","color":"#EFDADA"}]}},{"text":"Loot Table Display Item:\n","color":"#EFDADA"},{"text":"[Set From Hand] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/loot_table_display/hand"}},{"text":"[Bundle] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/loot_table_display/bundle"}}]

#Light level
tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"What light level the item will render itself as.","color":"#EFDADA"}]}},{"text":"Light Level:\n","color":"#EFDADA"},{"text":"[Set From Block] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/parse"}},{"text":"[0] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/0"}},{"text":"[1] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/1"}},{"text":"[2] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/2"}},{"text":"[3] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/3"}},{"text":"[4] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/4"}},{"text":"[5]\n","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/5"}},{"text":"[6] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/6"}},{"text":"[7] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/7"}},{"text":"[8] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/8"}},{"text":"[9] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/9"}},{"text":"[10] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/10"}},{"text":"[11] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/11"}},{"text":"[12] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/12"}},{"text":"[13] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/13"}},{"text":"[14] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/14"}},{"text":"[15] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/light/15"}}]

#Render distance
tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"What render distance an item will display at. This is affected by the vanilla \"Entity Distance\" setting.","color":"#EFDADA"}]}},{"text":"Render Distance:\n","color":"#EFDADA"},{"text":"[8] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/render_distance/8"}},{"text":"[16] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/render_distance/16"}},{"text":"[32] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/render_distance/32"}},{"text":"[64] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/render_distance/64"}},{"text":"[128] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/render_distance/128"}}]

#Size
execute if score $cache.calc.can_size dies.master matches 1 run tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"What size the item displays at.","color":"#EFDADA"}]}},{"text":"Size:\n","color":"#EFDADA"},{"text":"[Small] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/size/small"}},{"text":"[Regular (Item Frame)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/size/regular"}},{"text":"[Big] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/size/big"}},{"text":"[Full (Held)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/size/full"}}]

#Count
function dies:func/menu/lines/settings/count

#Poses
tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"What \"pose\" the item is in. Presets only offcially support the listed facing, and any oddities involving placing on other faces are allowed for creativity but not supported.","color":"#EFDADA"}]}},{"text":"Pose:\n","color":"#EFDADA"},{"text":"[Flat (Any)(Default)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/default/main"}},{"text":"[Tool In Block (Floor)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/axe_in_log/main"}},{"text":"[Floating In Center (Floor)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/floating_in_center/main"}},{"text":"[Head On Ground (Floor)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/head/main"}},{"text":"[Stack of Blocks (Floor)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/stack_of_blocks/main"}},{"text":"[Stack of Items (Floor)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/stack_of_items/main"}},{"text":"[Bow Against Wall (Wall)] ","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/menu/change_setting/individual/pose/bow_against_wall/main"}}]

#Preset
#tellraw @s ["",{"text":"[?] ","color":"#F5CE54","hoverEvent":{"action":"show_text","contents":[{"text":"Save this item as a preset, giving you an item frame which will automatically adopt the settings of this one.","color":"#EFDADA"}]}},{"text":"[Save As Preset Item]","color":"#4EF4A9","clickEvent":{"action":"run_command","value":"/function dies:func/give_item/preset"}}]
#UNFINISHED WIP

function #minecraft:dies/menu_end

#Warning footer
tellraw @s {"text":"You may need to scroll up to see the full menu/information.","color":"#EFDADA"}
