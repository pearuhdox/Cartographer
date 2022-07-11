# Datapack  : Black Box Library
# Module    : Core
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 9/1/22
# Name      : Build Forceload Chunk
# Use       : Runs when the datapack is first loaded to build the force chunk.

#Fill chunk
fill 4206848 -1 4206879 4206863 -64 4206864 bedrock
fill 4206848 0 4206879 4206863 127 4206864 bedrock
fill 4206848 128 4206879 4206863 255 4206864 bedrock

#Fill bocks
fill 4206863 1 4206879 4206848 10 4206864 barrier
fill 4206849 1 4206878 4206862 10 4206865 air

#Magic block
setblock 4206849 1 4206865 diamond_block