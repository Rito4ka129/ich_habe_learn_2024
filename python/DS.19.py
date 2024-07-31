#1.Напишите программу, которая принимает список слов и возвращает список, содержащий только анаграммы.
#Анаграммы - это слова, составленные из одних и тех же букв, но в разном порядке.
#Создайте функцию anagrams, которая принимает список слов в качестве аргумента и возвращает список анаграмм.
#Используйте множества и сортировку букв в слове для проверки на анаграмму. Выведите результат на экран.
#Пример переданного списка слов:['cat', 'dog', 'tac', 'god', 'act']
#Пример вывода: Анаграммы: ['dog', 'god'], ['cat', 'tac', 'act']
#words = ['cat', 'dog', 'tac', 'god', 'act']
def anagrams(words):
    anagram_dict = {}
    for word in words:
        sorted_word = ''.join(sorted(word))
        if sorted_word in anagram_dict:
            anagram_dict[sorted_word].append(word)
        else:
            anagram_dict[sorted_word] = [word]

    result = [group for group in anagram_dict.values() if len(group) > 1]
    return result
words = ['cat', 'dog', 'tac', 'god', 'act']
print("Анаграммы:", anagrams(words))

#2.Напишите функцию is_subset, которая принимает два множества set1 и set2 и проверяет, является ли set1 подмножеством set2.
#Функция должна возвращать True, если все элементы из set1 содержатся в set2, и False в противном случае. Функция должна быть
#реализована без использования встроенных методов issubset или <=.
#Пример множеств:    {1, 2, 3},    {1, 2, 3, 4, 5}
#Пример вывода:True

def is_subset(set1, set2):
    for elements in set1:
        if elements not in set2:
            False
    return True
set1 = {1, 2, 3}
set2 = {1, 2, 3, 4, 5}