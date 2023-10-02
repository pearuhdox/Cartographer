execute on passengers if entity @s[tag=ca.entity_popup,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/popup

execute if score @s ca.brutal_stacks matches 10.. on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +100% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 9 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +90% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 8 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +80% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 7 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +70% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 6 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +60% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 5 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +50% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 4 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +40% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 3 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +30% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 2 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +20% Damage 🗡","color":"dark_red","bold":true,"italic":false}'
execute if score @s ca.brutal_stacks matches 1 on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"🗡 +10% Damage 🗡","color":"dark_red","bold":true,"italic":false}'

execute on passengers if entity @s[tag=ca.entity_popup,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0
scoreboard players set @s ca.notice_time 71
