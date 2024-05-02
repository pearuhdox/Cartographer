# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math *= #lcg constant
scoreboard players add #lcg math 12345
scoreboard players operation out math = #lcg math