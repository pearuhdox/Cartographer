
execute as @e[type=interaction,distance=..7,tag=dies.interaction] at @s run function dies:func/interact/check_left
execute as @e[type=interaction,distance=..40,tag=big_test] at @s run function dies:func/interact/check_left

advancement revoke @s only dies:interact/left
