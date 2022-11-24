execute unless entity @s[tag=ca.chase] run tp @s ^ ^ ^0.4

execute if entity @s[tag=ca.chase] unless score @s ca.lifetime matches ..10 unless entity @a[distance=..3.5] anchored eyes facing entity @p feet rotated ~ 0 positioned ^ ^ ^0.6 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~
execute if entity @s[tag=ca.chase] if entity @a[distance=..3.5] run tp @s ^ ^ ^0.4
execute if entity @s[tag=ca.chase] unless score @s ca.lifetime matches 11.. run tp @s ^ ^ ^0.4