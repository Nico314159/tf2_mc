data modify entity @s data set from storage tf2:temp summon[0].data 
data modify entity @s Pos set from storage tf2:temp summon[0].Pos 
data modify entity @s Tags set from storage tf2:temp summon[0].Tags
# this final line may not be necessary 
tag @s remove tf2.new