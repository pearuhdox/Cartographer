scoreboard players set in math 1
scoreboard players set in1 math 100

function cartographer_core:helper/math/rng/range

scoreboard players operation $melee ca.melee_chance = out math

execute if entity @s[tag=is_stunning_1] run scoreboard players set $percent_stun ca.melee_chance 1
execute if entity @s[tag=is_stunning_2] run scoreboard players set $percent_stun ca.melee_chance 2
execute if entity @s[tag=is_stunning_3] run scoreboard players set $percent_stun ca.melee_chance 3
execute if entity @s[tag=is_stunning_4] run scoreboard players set $percent_stun ca.melee_chance 4
execute if entity @s[tag=is_stunning_5] run scoreboard players set $percent_stun ca.melee_chance 5

scoreboard players operation $percent_stun ca.melee_chance *= $10 ca.CONSTANT

execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if score $melee ca.melee_chance <= $percent_stun ca.melee_chance run scoreboard players set @s ca.effect_stun 21

tag @s[type=#bb:hostile,tag=is_stunning_1] remove is_stunning_1
tag @s[type=#bb:hostile,tag=is_stunning_2] remove is_stunning_2
tag @s[type=#bb:hostile,tag=is_stunning_3] remove is_stunning_3
tag @s[type=#bb:hostile,tag=is_stunning_3] remove is_stunning_4
tag @s[type=#bb:hostile,tag=is_stunning_3] remove is_stunning_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Stunning (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]