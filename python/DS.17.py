#1.Напишите программу, которая принимает список чисел от пользователя и передает его в функцию modify_list,
#которая изменяет элементы списка. Функция должна умножить нечетные числа на 2, а четные числа разделить на 2.
#Выведите измененный список на экран. Объясните, почему изменения происходят только внутри функции и как
#работают изменяемые и неизменяемые параметры.
#Пример вывода:
#Введите список чисел, разделенных пробелами: 1 2 3 4 5
#Измененный список чисел: [2, 1, 6, 2, 10]


#def modify_list(lst):
    #for i in range(len(lst)):
        #if lst[i] % 2 == 0:
            #lst[i] //= 2
        #else:
            #lst[i] *= 2
#numbers = list(map(int, input("Введите список чисел, разделенных пробелами: ").split()))
#modify_list(numbers)
#print("Измененный список чисел:", numbers)


#2.Напишите программу, которая принимает произвольное количество аргументов от пользователя и передает их в функцию
#, которая возвращает сумму всех аргументов. Используйте оператор * при передаче аргументов в функцию.
#Выведите результат на экран.
#Пример вывода:
#Введите числа, разделенные пробелами: 1 2 3 4 5
#Сумма чисел: 15

def calculate_sum(*args):
    return sum(args)
user_numb = input("Введите числа, разделенные пробелами: ")
numbers = map(int, user_numb.split())
result = calculate_sum(*numbers)
print("Сумма чисел: ", result)