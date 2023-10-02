execute on passengers if entity @s[tag=ca.animation_text,tag=!ca.charge_bar,tag=!ca.popup_notice,type=text_display] run tag @s add ca.popup_notice

execute if score @s ca.carapace_stacks matches 4.. on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"< 🛡🛡🛡🛡 >","color":"#b99be0","bold":true,"italic":false}'
execute if score @s ca.carapace_stacks matches 3 on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"< 🛡🛡🛡 >","color":"#b99be0","bold":true,"italic":false}'
execute if score @s ca.carapace_stacks matches 2 on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"< 🛡🛡 >","color":"#b99be0","bold":true,"italic":false}'
execute if score @s ca.carapace_stacks matches 1 on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"< 🛡 >","color":"#b99be0","bold":true,"italic":false}'
execute if score @s ca.carapace_stacks matches 0 on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run data modify entity @s text set value '{"text":"< ❌ >","color":"#b99be0","bold":true,"italic":false}'

execute if score @s ca.carapace_stacks matches 0.. on passengers if entity @s[tag=ca.animation_text,tag=ca.popup_notice,type=text_display] run scoreboard players set @s ca.lifetime 0

scoreboard players set @s ca.notice_time 61
