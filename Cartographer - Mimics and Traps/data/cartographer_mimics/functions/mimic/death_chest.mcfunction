execute unless data entity @s Item.tag.DropData[0].Slot run data modify block ~ ~ ~ LootTable set from entity @s Item.tag.DropTable

data modify block ~ ~ ~ Items set from entity @s Item.tag.DropData

kill @s