import json

j = '{"name":"keif","age":23}'
y=json.loads(j)
print(y)
print(y["name"])

dic={"state":"AP","Capital":"Amaravathi"}
js=json.dumps(dic)
print(js)

