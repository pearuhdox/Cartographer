
execute as @e[type=interaction,distance=..7,tag=dies.interaction] at @s run function dies:func/interact/check_right

advancement revoke @s only dies:interact/right
