'''
s1 = 'hello'
s2 = 'ohell'

dict1 = {s:s1.count(s) for s in s1}
dict2 = {s:s2.count(s) for s in s1}

if dict1 == dict2:
    print('Y')
else:
    print("N")
'''

# Given a string as input,
# use recursion to output each letter of the strings in reverse order, 
# on a new line.
'''
def spell(txt):
    if len(txt) == 0:
        return txt
    else:
        print(txt[-1])
        spell(txt[:-1])
    
txt = 'abc'
spell(txt)
'''

'''
You are making a drawing application, which has a Shape base class.
The given code defines a Rectangle class, creates a Rectangle object and calls its area() and perimeter() methods.

Do the following to complete the program:
1. Inherit the Rectangle class from Shape.
2. Define the perimeter() method in the Rectangle class, printing the perimeter of the rectangle.


class Shape: 
    def __init__(self, a):
        self.area = a
        #self.perimeter = p

class Square(Shape):
    def sides(self):
        return self.area**(1/2)

sq1 = Square(16)
print(sq1.sides())
'''

'''
class Shape: 
    def __init__(self, w, h):
        self.width = w
        self.height = h

    def area(self):
        return self.width*self.height

    def __add__(self, other):
        return Shape(self.width + other.width, self.height + other.height)

    def __gt__(self, other):
        return self.area() > other.area()
    

w1 = 2
h1 = 4
w2 = 5
h2 = 9

s1 = Shape(w1, h1)
s2 = Shape(w2, h2)
result = s1 + s2

print(result.area())
print(s1 > s2)
'''

'''
n = 4

file = open("numbers.txt", "w+")

for i in range(n+1):
    file.append(str(i))

file.close()

f = open("numbers.txt", "r")
print(f.read())
f.close()
'''
'''
targetList = [1, 4, 7, 10, 3, 2, 5, 6, 8]
targetSum = 12

def pairs(list1, target):
    sums = []

    while True:
        trgt = target
        lst = list1
        for i in lst:
            trgt = trgt - i
            for j in 
            if temp == 0:
                
            elif i == 12:
                sums.append(i)
            else:
                temp = 
        sums
'''


# return the most frequent element
# remove duplictes

a = [1, 2, 3, 4, 4, 5, 8, 8, 9]
b = [1, 2, 4, 3, 5, 4, 8, 9, 8, 10, 10]
c = [1, 2, 4, 3, 8, 5, 9]


def removed(elements):
    for i in elements:
        c = elements.count(i)
        while c > 1:
            elements.remove(i)
            c -= 1
    return elements

def removed1(elements):
    new = []
    [new.append(x) for x in elements if x not in new]
    return new

# print(removed(e))

# print(removed1(e))

def isSet1(elements):
    new = []
    [new.append(x) for x in elements if x not in new]
    return new == elements

def isSet2(elements):
    elements.sort()
    return elements == list(set(elements))

print(isSet1(b))