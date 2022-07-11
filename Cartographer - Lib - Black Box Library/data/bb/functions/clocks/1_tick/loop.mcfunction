# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/21/21
# Name      : 1 Tick Clock
# Use       : A looping clock for running other functions at a rate of 1/t.

#Loop
schedule function bb:clocks/1_tick/loop 1t

function #minecraft:bbl/clock/1_tick

#As Player
execute as @a at @s run function bb:clocks/1_tick/as_player

#\Interaction Blocker
execute if score $player_has_blocker bbl.storage matches 1 as @e[type=slime,tag=bbl.block_interaction] at @s run function bb:lib/item_effects/block_interaction/schedule/global