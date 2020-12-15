execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=1}] run tag @e[type=trident,distance=..3,limit=1] add tempest_1
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=2}] run tag @e[type=trident,distance=..3,limit=1] add tempest_2
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=3}] run tag @e[type=trident,distance=..3,limit=1] add tempest_3
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=4}] run tag @e[type=trident,distance=..3,limit=1] add tempest_4
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=5}] run tag @e[type=trident,distance=..3,limit=1] add tempest_5

execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=1..}] run scoreboard players set @e[type=trident,distance=..3,limit=1] tempest 1
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={tempest=1..}] run scoreboard players set @e[type=trident,distance=..3,limit=1] helper_lifetime 1
