#Check to see if the player threw a trident for processing.
tag @s add threw_trident
scoreboard players set @s helper_trident2 0
advancement revoke @s only cartographer_custom_enchantments:throw_trident
