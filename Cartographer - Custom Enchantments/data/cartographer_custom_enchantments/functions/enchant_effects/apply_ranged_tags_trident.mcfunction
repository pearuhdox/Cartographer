#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags (trident).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if entity @s[scores={ca.tempest=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.tempest = @s ca.tempest
execute if entity @s[scores={ca.tempest=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.ricochet=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.ricochet = @s ca.ricochet
execute if entity @s[scores={ca.ricochet=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.current=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.current = @s ca.current
execute if entity @s[scores={ca.current=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.duelist=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.duelist = @s ca.duelist
execute if entity @s[scores={ca.duelist=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.hunter=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.hunter = @s ca.hunter
execute if entity @s[scores={ca.hunter=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.singe=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.singe = @s ca.singe
execute if entity @s[scores={ca.singe=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.frostbite=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.frostbite = @s ca.frostbite
execute if entity @s[scores={ca.frostbite=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.exposing=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.exposing = @s ca.exposing
execute if entity @s[scores={ca.exposing=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.stunning=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.stunning = @s ca.stunning
execute if entity @s[scores={ca.stunning=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.infection=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.infection = @s ca.infection
execute if entity @s[scores={ca.infection=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.electrocute=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.electrocute = @s ca.electrocute
execute if entity @s[scores={ca.electrocute=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.bleeding=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.bleeding = @s ca.bleeding
execute if entity @s[scores={ca.bleeding=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.fire_aspect=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.fire_aspect = @s ca.fire_aspect
execute if entity @s[scores={ca.fire_aspect=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ca.cauterize=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ca.cauterize = @s ca.cauterize
execute if entity @s[scores={ca.cauterize=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident