#!/bin/python3

quote = 'This is a Variable, Can Be a String, Number, List and Turples. It holds information'
print (quote)

print(quote.upper())#Upper Case
print(quote.lower())#Lower Case
print(quote.title())#Title Case

print(len(quote)) #Lenght of variable quote including spaces

name = 'Alfonso' #String
age = 20 #Int
height =177.5 #Float

print('My name is ' + name + ',I am ' + str(age) + ' old.') #all variables HAVE TO BE the same type

age += 1 #adds one to age.
print (age)

birthday = 2

age += birthday #adds the variable birthday to the last version of age
print(age)

print('\n')

#Funtions
print('Example of function')

def Emily():
	name = 'Em'
	age = 19
	print('My name is ' + name + ',I am ' + str(age) + ' old.')
#The Function wont work until is called like below
Emily()

#adding parametres
def add_one_hundred(num):
	print(num + 100)
add_one_hundred(100)

#multiple parametres
def add(x,y):
	print(x+y)
add(7,9)

def return_example(x,y):
	return 	x * y
return_example(8,8)

#just return the number, stores the value for later
print(return_example(8,8))

#New Line
def nl():
	print('\n')

#Boolean Expresion
print('Boolean Expresions:')

bool1 = True
bool2 = 3*3 == 9
bool3 = False
bool4 = 3*3!=9 

print(bool1,bool2,bool3,bool4)
print(type(bool1))

nl()
#Boolean Operators
greater = 7 > 5
less = 5 < 7
greater_and_equal = 7>=5
less_and_equal = 5 <=7

#Truth Tables
test_and = (7 > 5) and (5 < 7) #True
test_and2 = (7 <5) and (5 < 7) #False
test_or = (7 > 5)or(5 < 7) #True
test_or2 = (7 < 5) or (5 < 7) #True



