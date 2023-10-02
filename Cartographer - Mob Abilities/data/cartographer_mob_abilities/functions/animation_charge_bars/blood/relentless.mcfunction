execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.relent_stacks matches 10.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +50% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 9 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +45% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 8 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +40% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 7 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +35% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 6 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +30% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 5 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +25% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 4 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +20% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 3 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +15% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 2 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +10% Speed 🗡","color":"gray","bold":true,"italic":false}'
execute if score @s ca.relent_stacks matches 1 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +5% Speed 🗡","color":"gray","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71
