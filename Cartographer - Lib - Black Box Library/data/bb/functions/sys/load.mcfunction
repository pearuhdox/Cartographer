# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/21/21
# Name      : Load
# Use       : Runs when the datapack is loaded.

#Install
function bb:sys/install

#Set datapack active
function bb:integration/active/clear

#Set up RNG
#\User-scores
scoreboard players set $value bbl.rng 0
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 10
scoreboard players set $seed bbl.rng 14

#\Internal-scores
scoreboard players set #int_1 bbl.rng 7
scoreboard players set #int_2 bbl.rng 17
scoreboard players set #int_3 bbl.rng 23
scoreboard players set #1a bbl.rng 1073742583
scoreboard players set #2a bbl.rng 1073741827
scoreboard players set #3a bbl.rng 2000000407
scoreboard players set #1b bbl.rng 1073741953
scoreboard players set #2b bbl.rng 1073742223
scoreboard players set #3b bbl.rng 2000000579
scoreboard players set #zero bbl.rng 0
scoreboard players set #minus_one bbl.rng -1
scoreboard players set #thirteen bbl.rng 13
scoreboard players set #seven bbl.rng 13
scoreboard players set #23 bbl.rng 13
scoreboard players set #four bbl.rng 4
scoreboard players set #two bbl.rng 2
scoreboard players set #one bbl.rng 1

#\Read in seed
scoreboard players operation #int_1 bbl.rng = $seed bbl.rng
scoreboard players operation #int_2 bbl.rng = $seed bbl.rng
scoreboard players operation #int_3 bbl.rng = $seed bbl.rng
scoreboard players operation #int_1 bbl.rng *= #seven bbl.rng
scoreboard players operation #int_2 bbl.rng *= #23 bbl.rng
scoreboard players operation #int_3 bbl.rng *= #thirteen bbl.rng

#\Burn an RNG state
function rng:next