import pandas as pd
arr = pd.Series([12,34,56,78],index=["a","b","c","d"])
print(arr)

data={
    "Name":["keifer","kalix","yuri"],
    "ages":[12,23,34],
    "city":["philipine","korea","turkey"]
}
dt=pd.DataFrame(data)
print(dt)
print(dt.head())
print(dt.tail(2))
print(dt.describe())
print(dt.info())
print(dt.columns)

# print(dt["ages"]>24)
# print(dt[["Name","city"]])
# print(dt[dt['ages']])

dt["ages"]+=1
print(dt)

dt["country"]="USA"
print(dt)

dt.drop("country")
print(dt)

