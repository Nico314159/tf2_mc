classes = ['spy', 'sniper', 'scout', 'soldier', 'demoman', 'heavy', 'pyro', 'engineer', 'medic']
import json
q = {
	"model": {
		"type": "minecraft:select",
		"property": "minecraft:custom_model_data",
		"cases": [
			{
				"when": l,
				"model": {
					"type": "minecraft:model",
					"model": f"tf2:item/{l}/icon"
				}
			}
		for l in classes]
	}
}
print(json.dumps(q))