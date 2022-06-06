def solution(s):
    answer = 0
    matching_number = {'zero': '0', 'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5',
                       'six': '6', 'seven': '7', 'eight': '8', 'nine': '9'}

    for num in list(matching_number.keys()):
        while True:
            if s.find(num) != -1:
                s = s.replace(num, matching_number.get(num))
            else:
                break
    answer = int(s)
    return answer


print(solution("23four5six7"))
print(solution("one4seveneight"))
print(solution("123"))
++