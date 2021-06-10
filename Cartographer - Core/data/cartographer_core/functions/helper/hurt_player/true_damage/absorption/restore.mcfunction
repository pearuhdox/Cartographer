#converting into amplifier
scoreboard players set damage= true_abs 0
#scoreboard players add absorption= true_abs 1
scoreboard players operation absorption= true_abs /= $4 ca.CONSTANT
scoreboard players remove absorption= true_abs 1

#restoring effect to nearest value
execute if score absorption= true_abs matches 0.. run function cartographer_core:helper/hurt_player/true_damage/absorption/restore_cloud