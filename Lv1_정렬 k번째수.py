def solution(array, commands):
    answer = []
    for i in commands:
        temp = array[i[0] - 1:i[1]]
        temp.sort()
        temp = temp[i[2] - 1]
        answer.append(temp)
    return answer


print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

# 다른 사람의 풀이 보면 lambda로 한 줄 가능하다. 익히자..
