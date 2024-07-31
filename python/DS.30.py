#1. Создайте класс Rectangle для представления прямоугольника.
#Класс должен иметь атрибуты width (ширина) и height (высота) со значениями по умолчанию, а также методы()
# для вычисления площади прямоугольника и calculate_perimeter() для вычисления периметра прямоугольника.
#Переопределить методы __str__, __repr__.
#Затем создайте экземпляр класса Rectangle и выведите информацию о нем,                           его площадь и периметр.

#class Rectangle:
    #def __init__(self, width, height):
        #self.width = width
        #self.height = height

    #def __str__(self):
        #return f'Area: {self.calculate_area()}, Perimeter:{self.calculate_sum()}'

    #def __repr__(self):
        #return f'Area: {self.calculate_area()}, Perimeter:{self.calculate_sum()}'

    #def calculate_area(self):
        #return self.width * self.height

    #def calculate_sum(self):
        #return (self.width + self.height) * 2

#result = Rectangle(15, 10)
#print(result)                                  #Area: 150, Perimeter:50


#2. Создайте класс BankAccount для представления банковского счета. Класс должен иметь атрибуты account_number
#(номер счета) и balance (баланс), а также методы deposit() для внесения денег на счет и withdraw() для снятия денег со
#счета. Затем создайте экземпляр класса BankAccount, внесите на счет некоторую сумму и снимите часть денег. Выведите
#оставшийся баланс. Не забудьте предусмотреть вариант, при котором при снятии баланс может стать меньше нуля. В этом
#случае уходить в минус не будем, вместо чего будем возвращать сообщение "Недостаточно средств на счете".

class BankAccount:

    def __init__(self, account_number, balance=0):
        self.account_number = account_number
        self.balance = balance

    def __str__(self):
        return f'your account number is {self.account_number}, your balance is {self.balance}'

    def deposit(self, amount):
        self.balance += amount
        return f'Your balance {self.balance} has been successfully updated'

    def withdraw(self, amount):

        if self.balance >= amount:
            self.balance -= amount
            return f'Your balance {self.balance}has been successfully updated'
        else:
            return f'Insufficient funds in the account'

bank_sum = BankAccount(78, 500)
print(bank_sum)
print(bank_sum.deposit(70))
print(bank_sum)
print(bank_sum.withdraw(150))
print(bank_sum)