def solution(numbers, target):
    answer = 0
    temp = [0]
    for i in range(0, len(numbers)):
        temp2 = []
        for j in range(0, len(temp)):
            temp2.append(temp[j] + numbers[i])
            temp2.append(temp[j] - numbers[i])
        temp = temp2

    for i in range(0, len(temp2)):
        if target == temp2[i]:
            answer += 1

    return answer


print(solution([1, 1, 1, 1, 1], 3))
