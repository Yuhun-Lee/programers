def solution(s):
    answer = 1000
    if len(s) == 1:
        answer = 1

    for i in range(1, (len(s) // 2) + 1):
        temp = s[0:i]
        c_str = ''
        count = 1
        for j in range(1, 1001):
            if i * j > len(s):
                c_str += s[i * (j - 1):]
                break
            if temp == s[i * j:i * (j + 1)]:
                count += 1
            else:
                if count == 1:
                    count = 'A'
                c_str += str(count) + temp
                temp = s[i * j:i * (j + 1)]
                count = 1
        c_str = c_str.replace('A', '')
        
        if len(c_str) < answer:
            answer = len(c_str)
    return answer


print(solution("abcabcabcabcdededededede"))
