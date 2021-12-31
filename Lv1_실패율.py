def solution(N, stages):
    user = {}
    for i in range(1, N + 1):
        failure = 0
        arrive_stage = 0
        current_fail = 0
        for j in stages:
            if i <= j:
                arrive_stage += 1
                if i == j:
                    current_fail += 1
        if arrive_stage != 0:
            failure = current_fail / arrive_stage
        user[i] = failure
    answer = sorted(user.keys(), key=lambda item: user[item], reverse=True)
    return answer


print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
