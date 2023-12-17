tp @s ~ ~ ~ facing entity @p[scores={ca.recently_fired_weapon=1..}] feet
tp @s ~ ~ ~ ~ 5
tag @s add co_rotation_lock
scoreboard players set @s co_y 2

execute if score $punch ca.var matches 1 run scoreboard players set @s co_send -10
execute if score $punch ca.var matches 2 run scoreboard players set @s co_send -14
execute if score $punch ca.var matches 3 run scoreboard players set @s co_send -20
execute if score $punch ca.var matches 4 run scoreboard players set @s co_send -25
execute if score $punch ca.var matches 5.. run scoreboard players set @s co_send -33

function motion:motion/push

tag @s remove co_rotation_lock

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Punch (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]