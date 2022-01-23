import math


def solution(w, h):
    h, w = max(w, h), min(w, h)
    comax = 1
    for i in range(1, w + 1):
        if w % i == 0 and h % i == 0:
            comax = i

    answer = w * h - (w + h - comax)

    return answer


print(solution(8, 12))
