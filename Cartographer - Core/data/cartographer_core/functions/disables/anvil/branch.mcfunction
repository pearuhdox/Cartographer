########################################
# File: Cartographer Core - Disables / Anvil Raycast
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Find an anvil the player used.
########################################

title @s actionbar {"text":"Anvils are disabled!","color":"red","italic":false}
playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.35 2
scoreboard players set @s ca.raycast 0
schedule function cartographer_core:disables/anvil/schedule 2t
summon item_frame ~ ~ ~ {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["disabled_anvil_place"],Item:{}}
clone ~ ~ ~ ~ ~ ~ 4206900 15 4206900 replace force
setblock ~ ~ ~ air replace