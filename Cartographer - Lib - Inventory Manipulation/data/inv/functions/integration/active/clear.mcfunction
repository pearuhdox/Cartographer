# Datapack  : CDL
# Author(s) : RockNRed
# Created   : 7/22/21
# Last Edit : 7/22/21
# Name      : Clear
# Use       : Ran to clear the active datapacks storage.

data remove storage loe:datapacks active_datapacks
schedule function inv:integration/active/set 1t