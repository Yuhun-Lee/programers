def solution(board, moves):
    answer = 0
    bucket = []
    for i in moves:
        for j in board:
            if j[i - 1] == 0:
                pass
            else:
                bucket.append(j[i - 1])
                j[i - 1] = 0
                break
        if len(bucket) > 1 and (bucket[-1] == bucket[-2]):
            answer += 2
            bucket = bucket[0:-2]

    return answer


# 스택 문제인듯

print(solution([[0, 0, 0, 0, 0],
                [0, 0, 1, 0, 3],
                [0, 2, 5, 0, 1],
                [4, 2, 4, 4, 2],
                [3, 5, 1, 3, 1]],
               [1, 5, 3, 5, 1, 2, 1, 4]))
