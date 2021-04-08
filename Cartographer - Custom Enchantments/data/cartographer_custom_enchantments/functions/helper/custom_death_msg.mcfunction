execute if entity @s[tag=second_winded] run tellraw @a [{"selector":"@p"},{"text":" ran out of second chances","color":"white"}]
execute if entity @s[tag=regretting] run tellraw @a [{"selector":"@p"},{"text":" was swallowed by their regrets","color":"white"}]

tag @s remove second_winded
tag @s remove regretting