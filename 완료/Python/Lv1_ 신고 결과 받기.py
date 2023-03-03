def solution(id_list, report, k):
    declared = []

    declare = {}
    answer = {}
    for i in id_list:
        declare[i] = []
        answer[i] = 0

    for i in report:
        a, b = i.split(" ")
        if a not in declare[b]:
            declare[b].append(a)

    for i in declare.values():
        declared.append(len(i))

    print(declared)

    for index, value in enumerate(declared):
        if value >= k:
            for i in declare[id_list[index]]:
                answer[i] += 1

    return list(answer.values())


print(
    solution(
        ["muzi", "frodo", "apeach", "neo"],
        ["muzi frodo", "apeach frodo", "frodo neo", "muzi neo", "apeach muzi"],
        2,
    )
)
