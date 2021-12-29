def solution(numbers, hand):
    answer = ''
    current_left = [4, 1]
    current_right = [4, 3]

    location = {1: [1, 1], 2: [1, 2], 3: [1, 3], 4: [2, 1], 5: [2, 2],
                6: [2, 3], 7: [3, 1], 8: [3, 2], 9: [3, 3], 0: [4, 2]}

    for num in numbers:
        if num == 1 or num == 4 or num == 7:
            answer += 'L'
            current_left = location[num]
        elif num == 3 or num == 6 or num == 9:
            answer += 'R'
            current_right = location[num]
        else:
            left_way = abs(current_left[0] - location[num][0]) + abs(current_left[1] - location[num][1])
            right_way = abs(current_right[0] - location[num][0]) + abs(current_right[1] - location[num][1])
            if left_way == right_way:
                if hand[0].upper() == 'L':  # hand == 'left' 이게 더 낫겠군
                    answer += 'L'
                    current_left = location[num]
                elif hand[0].upper() == 'R':
                    answer += 'R'
                    current_right = location[num]
            elif left_way < right_way:
                answer += 'L'
                current_left = location[num]
            elif left_way > right_way:
                answer += 'R'
                current_right = location[num]
    return answer


print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right"))
print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left"))
