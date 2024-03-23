
# 1)  Set player "$minuslevel"'s "bbl.xp" score to a number of levels
# 2)  Run this as the player
# 3a) If successful, the xp is gone and the player's "bbl.xp.success" score is 1
# 3b) If unsuccessfulful, the xp is unchanged and the player's "bbl.xp.success" score is 0

# Get the player's level
execute store success score @s bbl.xp.success store result score $playerlevel bbl.xp run xp query @s levels

# Determine if this can succeed
execute if score @s bbl.xp.success matches 1 if score $playerlevel bbl.xp < $minuslevel bbl.xp run scoreboard players set @s bbl.xp.success 0

# Scores outside this range will overflow or make no sense, causing incorrect values to be used.
execute if score @s bbl.xp.success matches 1 unless score $minuslevel bbl.xp matches 0..15464 run scoreboard players set @s bbl.xp.success 0

# Calculate the amount of xp we want to subtract from the player in bbl.xp points
execute if score @s bbl.xp.success matches 1 if score $minuslevel bbl.xp matches 0..16 run function bb:lib/minuslevels/low
execute if score @s bbl.xp.success matches 1 if score $minuslevel bbl.xp matches 17..31 run function bb:lib/minuslevels/mid
execute if score @s bbl.xp.success matches 1 if score $minuslevel bbl.xp matches 32.. run function bb:lib/minuslevels/high

# Subtract that xp
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1073741824.. run xp add @s -1073741824 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1073741824.. run scoreboard players remove $result bbl.xp 1073741824
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 536870912.. run xp add @s -536870912 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 536870912.. run scoreboard players remove $result bbl.xp 536870912
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 268435456.. run xp add @s -268435456 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 268435456.. run scoreboard players remove $result bbl.xp 268435456
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 134217728.. run xp add @s -134217728 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 134217728.. run scoreboard players remove $result bbl.xp 134217728
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 67108864.. run xp add @s -67108864 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 67108864.. run scoreboard players remove $result bbl.xp 67108864
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 33554432.. run xp add @s -33554432 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 33554432.. run scoreboard players remove $result bbl.xp 33554432
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16777216.. run xp add @s -16777216 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16777216.. run scoreboard players remove $result bbl.xp 16777216
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8388608.. run xp add @s -8388608 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8388608.. run scoreboard players remove $result bbl.xp 8388608
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4194304.. run xp add @s -4194304 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4194304.. run scoreboard players remove $result bbl.xp 4194304
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2097152.. run xp add @s -2097152 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2097152.. run scoreboard players remove $result bbl.xp 2097152
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1048576.. run xp add @s -1048576 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1048576.. run scoreboard players remove $result bbl.xp 1048576
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 524288.. run xp add @s -524288 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 524288.. run scoreboard players remove $result bbl.xp 524288
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 262144.. run xp add @s -262144 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 262144.. run scoreboard players remove $result bbl.xp 262144
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 131072.. run xp add @s -131072 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 131072.. run scoreboard players remove $result bbl.xp 131072
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 65536.. run xp add @s -65536 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 65536.. run scoreboard players remove $result bbl.xp 65536
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 32768.. run xp add @s -32768 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 32768.. run scoreboard players remove $result bbl.xp 32768
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16384.. run xp add @s -16384 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16384.. run scoreboard players remove $result bbl.xp 16384
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8192.. run xp add @s -8192 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8192.. run scoreboard players remove $result bbl.xp 8192
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4096.. run xp add @s -4096 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4096.. run scoreboard players remove $result bbl.xp 4096
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2048.. run xp add @s -2048 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2048.. run scoreboard players remove $result bbl.xp 2048
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1024.. run xp add @s -1024 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1024.. run scoreboard players remove $result bbl.xp 1024
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 512.. run xp add @s -512 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 512.. run scoreboard players remove $result bbl.xp 512
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 256.. run xp add @s -256 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 256.. run scoreboard players remove $result bbl.xp 256
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 128.. run xp add @s -128 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 128.. run scoreboard players remove $result bbl.xp 128
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 64.. run xp add @s -64 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 64.. run scoreboard players remove $result bbl.xp 64
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 32.. run xp add @s -32 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 32.. run scoreboard players remove $result bbl.xp 32
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16.. run xp add @s -16 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 16.. run scoreboard players remove $result bbl.xp 16
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8.. run xp add @s -8 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 8.. run scoreboard players remove $result bbl.xp 8
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4.. run xp add @s -4 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 4.. run scoreboard players remove $result bbl.xp 4
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2.. run xp add @s -2 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 2.. run scoreboard players remove $result bbl.xp 2
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1.. run xp add @s -1 points
execute if score @s bbl.xp.success matches 1 if score $result bbl.xp matches 1.. run scoreboard players remove $result bbl.xp 1
