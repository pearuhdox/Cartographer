function bb:lib/pldata/read

#say running cooldown swapper

execute if data storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling.Owner run scoreboard players set @s cooldown -100

#Return the Current Cooling Down Token to the proper queue.
execute if score @s cooldown matches -100 run scoreboard players set $token_type helper_tokens -1
execute if score @s cooldown matches -100 store result score $token_type helper_tokens run data get storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling.Type

execute if score @s cooldown matches -100 if score $token_type helper_tokens matches 0 run data modify storage bbl:pldata sudo_root.working_data.Tokens.LightTokens append from storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling
execute if score @s cooldown matches -100 if score $token_type helper_tokens matches 1 run data modify storage bbl:pldata sudo_root.working_data.Tokens.HeavyTokens append from storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling

execute if score @s cooldown matches -100 run data modify storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling set value {}

#Grab the next token off the cooldown stack. Set it to the cooldown score. Save it to ca.current cooling space.
scoreboard players set @s cooldown -1
execute store result score @s cooldown if data storage bbl:pldata sudo_root.working_data.Tokens.CooldownTokens[0].Cooldown run data get storage bbl:pldata sudo_root.working_data.Tokens.CooldownTokens[0].Cooldown

data modify storage bbl:pldata sudo_root.working_data.Tokens.CurrentCooling set from storage bbl:pldata sudo_root.working_data.Tokens.CooldownTokens[0]
data remove storage bbl:pldata sudo_root.working_data.Tokens.CooldownTokens[0]

function bb:lib/pldata/write