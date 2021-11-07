#Initialising the list
L=[]
print(L)

for x in range(2000,3200):
    if(x%7==0) and (x%5!=0):
       L.append(x)
#The List given below is the required result
print(L)
