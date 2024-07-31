#1.Напишите программу, которая принимает список слов от пользователя и использует генераторное выражение(comprehension)
#для создания нового списка, содержащего только те слова, которые начинаются с гласной буквы.Затем программа должна
#использовать  функцию map, чтобы преобразовать каждое слово в верхний регистр.В результате программа должна вывести
#новый список, содержащий только слова, начинающиеся с гласной буквы и записанные в верхнем регистре.

vok_list = "aeiouy"
fruit_list = "apple grapefruit banana lemon mango kiwi apricot".lower()
my_list = fruit_list.split()
comprehension_list = [word for word in my_list if word[0] in vok_list]
upper_list = list(map(str.upper, comprehension_list))
print(upper_list)                                                #['APPLE', 'APRICOT']


#2.Напишите программу, которая принимает список чисел от пользователя и использует функцию reduce из модуля functools, чтобы
#найти произведение всех чисел в списке.Затем программа должна использовать itertools.accumulate для накопления произведений
#чисел в новом списке.В результате программа должна вывести список, содержащий накопленные произведения.

#from functools import reduce
#from itertools import accumulate
#numbers = [1, 3, 5, 7, 9]
#product_of_num = reduce(lambda x, y: x*y, numbers)
#print(product_of_num)                              #945
#res2 = list(accumulate(numbers,lambda x, y: x*y))
#print(res2)                                        #[1, 3, 15, 105, 945]