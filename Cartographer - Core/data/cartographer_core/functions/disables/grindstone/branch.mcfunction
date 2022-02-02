########################################
# File: Cartographer Core - Disables / Anvil Raycast
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Find an anvil the player used.
########################################

title @s actionbar {"text":"Grindstones are disabled!","color":"red","italic":false}
playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.35 2
scoreboard players set @s ca.raycast 0
schedule function cartographer_core:disables/grindstone/schedule 2t
summon item_frame ~ ~ ~ {Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["disabled_grindstone_place"],Item:{}}
clone ~ ~ ~ ~ ~ ~ 4206900 17 4206900 replace force
setblock ~ ~ ~ air replace