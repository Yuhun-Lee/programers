def solution(numbers):
    answer = 0

    for i in range(0, len(numbers)):
        numbers[i] = str(numbers[i])
    temp = ''.join(numbers)
    for i in range(0, 10):
        if temp.find(str(i)) == -1:
            answer += i
    return answer


print(solution([1, 2, 3, 4, 6, 7, 8, 0]))
