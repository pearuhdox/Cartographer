#Push if not specified
execute unless entity @s[tag=ca.pull] unless entity @s[tag=ca.random_dir] positioned ^ ^0.1 ^0.5 run function cartographer_core:helper/damage_knockback/call

#Pull if specified
execute if entity @s[tag=ca.pull] positioned ^ ^0.1 ^-0.5 run function cartographer_core:helper/damage_knockback/call

#Random if specified
execute if entity @s[tag=ca.random_dir] positioned ~ ~0.1 ~ run function cartographer_core:helper/damage_knockback/call

tag @s remove ca.pull
tag @s remove ca.random_dir