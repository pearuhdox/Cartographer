scoreboard players set @s ca.deadeye_time 4

scoreboard players operation @s ca.frost = $frost ca.deadeye
scoreboard players operation @s ca.flame = $flame ca.deadeye


scoreboard players operation @s ca.trueshot = $trueshot ca.deadeye
scoreboard players operation @s ca.curse_encum = $curse_encum ca.deadeye

scoreboard players operation @s ca.multishot = $multishot ca.deadeye
scoreboard players operation @s ca.piercing = $piercing ca.deadeye

scoreboard players operation @s ca.power = $power ca.deadeye
scoreboard players operation @s ca.punch = $punch ca.deadeye

scoreboard players operation @s ca.sharpshot = $sharpshot ca.deadeye
scoreboard players operation @s ca.point_blank = $point_blank ca.deadeye

#Damage calculation
scoreboard players set @s ca.damage_queue 8
scoreboard players operation @s ca.damage_queue += @s ca.power

scoreboard players operation $pb_dmg ca.deadeye = $point_blank ca.deadeye
scoreboard players operation $pb_dmg ca.deadeye *= $4 ca.CONSTANT

scoreboard players operation @s ca.damage_queue += $pb_dmg ca.deadeye

tp @s ~ ~ ~ ~ ~

data modify entity @s data.ApplyEffects set from storage cartographer_custom_statuses:apply_effects data.Effects
data modify entity @s data.StatusInflict set from storage cartographer_custom_statuses:status_inflict data.Effects