#> vdv_iris:setup/scoreboard
#
# @context any
# @within vdv_iris:setup/load

scoreboard objectives add vdv_iris dummy {"text": "vdv_iris", "color": "gold"}
scoreboard objectives add vdv_iris.id dummy {"text": "vdv_iris entity IDs", "color": "gold"}

scoreboard players set $1000 vdv_iris 1000
scoreboard players set $1000000 vdv_iris 1000000