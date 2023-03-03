def solution(lottos, win_nums):
    answer = []
    match_num = 0
    max_rank = 0
    min_rank = 0
    pre_value = 0

    for lot in lottos:
        if lot == 0:
            pre_value += 1
        else:
            for win in win_nums:
                if lot == win:
                    match_num += 1

    min_rank = match_num
    max_rank = min_rank + pre_value

    ranking = {6: 1, 5: 2, 4: 3, 3: 4, 2: 5}
    max_rank = ranking.get(max_rank, 6)
    min_rank = ranking.get(min_rank, 6)

    answer.append(max_rank)
    answer.append(min_rank)

    return answer


print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
