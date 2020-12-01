execute if entity @s[scores={lifesteal=1,helper_kill=1..}] run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={lifesteal=2,helper_kill=1..}] run function cartographer_core:helper/heal_player/2

execute if entity @s[scores={lifesteal=3,helper_kill=1..}] run function cartographer_core:helper/heal_player/2
execute if entity @s[scores={lifesteal=3,helper_kill=1..}] run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={lifesteal=4,helper_kill=1..}] run function cartographer_core:helper/heal_player/4

execute if entity @s[scores={lifesteal=5,helper_kill=1..}] run function cartographer_core:helper/heal_player/4
execute if entity @s[scores={lifesteal=5,helper_kill=1..}] run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={lifesteal=6,helper_kill=1..}] run function cartographer_core:helper/heal_player/4
execute if entity @s[scores={lifesteal=6,helper_kill=1..}] run function cartographer_core:helper/heal_player/2

execute if entity @s[scores={lifesteal=1..,helper_kill=1..}] run playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={lifesteal=1..,helper_kill=1..}] run particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 2 force
