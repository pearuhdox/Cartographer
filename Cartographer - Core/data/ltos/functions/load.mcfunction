#main scoreboard
scoreboard objectives add ltos.main dummy
scoreboard players set $loaded ltos.main 1

#resetting storage
data modify storage ltos:main data set value {}