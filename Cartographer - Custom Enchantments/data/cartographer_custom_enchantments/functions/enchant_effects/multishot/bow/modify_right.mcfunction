data modify entity @s {} merge from storage cartographer_custom_enchantments:multishot data

data modify entity @s pickup set value 2b

scoreboard players set @s co_send 30

tp 31182015-1791-2513-1181-151800000000 ~ ~ ~

execute at @s run tp @s ~ ~ ~ facing entity 31182015-1791-2513-1181-151800000000 feet


tag @s add co_rotation_lock
tag @s add ca.multishot_right

execute rotated ~ ~ run function motion:motion/push

tp 31182015-1791-2513-1181-151800000000 4206900 0 4206900

data modify entity @s Rotation set value [0.0F,0.0F]