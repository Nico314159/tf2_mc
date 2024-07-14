data modify storage tf2:vars callback set from storage tf2:vars callbacks[0]
$$(callback)
data remove storage tf2:vars callbacks[0]
execute if data storage tf2:vars callbacks[] run function tf2:projectile/callbacks with storage tf2:vars