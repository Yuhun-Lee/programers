def solution(record):
    answer = []
    user_data = {}
    for i in record:
        temp = i.split()
        command = temp[0]
        if command == 'Enter' or command == 'Change':
            user_data[temp[1]] = temp[2]

    for i in record:
        temp = i.split()
        command = temp[0]
        if command == 'Enter':
            answer.append(f'{user_data[temp[1]]}님이 들어왔습니다.')
        elif command == 'Leave':
            answer.append(f'{user_data[temp[1]]}님이 나갔습니다.')

    return answer


print(solution(
    ["Enter uid1234 Muzi", "Enter uid4567 Prodo", "Leave uid1234", "Enter uid1234 Prodo", "Change uid4567 Ryan"]))
