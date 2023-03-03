def solution(new_id):
    answer = ""
    # 1
    answer = new_id.lower()
    temp = ""
    # 2
    for i in answer:
        if i.isalpha() or i.isdigit() or i == "-" or i == "_" or i == ".":
            temp = temp + i
        else:
            pass
    answer = temp
    # 3

    answer = answer.replace("..", ".")

    # 4
    while True:
        if len(answer) > 0:
            if answer[0] == ".":
                answer = answer[1:]
            elif answer[-1] == ".":
                answer = answer[:-1]
            else:
                break
        else:
            break
    # 5
    if answer == "":
        answer = "a"
    # 6
    if len(answer) >= 16:
        answer = answer[0:15]
    while True:
        if answer[-1] == ".":
            answer = answer[0:-1]
        else:
            break
    # 7
    while True:
        if len(answer) <= 2:
            answer = answer + answer[-1]
        else:
            break

    return answer


print(solution("...!@BaT#*..y.abcdefghijklm"))
print(solution("z-+.^."))
print(solution("=.="))
print(solution("123_.def"))
print(solution("abcdefghijklmn.p"))
