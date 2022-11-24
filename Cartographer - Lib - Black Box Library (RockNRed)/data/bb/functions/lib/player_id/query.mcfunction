# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Player ID/Query
# Use       : Can be ran manually to get player's ID and the next ID value.

tellraw @s ["","Player ",{"selector":"@s"}," has ID ",{"score":{"name":"@s","objective":"bbl.id"}},". ID for next new player is ",{"score":{"name":"$next_id","objective":"bbl.storage"}},"."]