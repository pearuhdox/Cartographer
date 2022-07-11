# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 8/11/21
# Last Edit : 8/11/21
# Name      : Global
# Use       : Runs as all blocker slimes

function bb:lib/item_effects/block_interaction/as_entity
schedule clear bb:lib/item_effects/block_interaction/schedule/kill_check
schedule function bb:lib/item_effects/block_interaction/schedule/kill_check 2t
