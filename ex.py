# 헷갈리는 문법 체크용. (메모장 같은 느낌)

a = [1, 2, 3]
for i in range(0, len(a)):
    a[i] = str(a[i])
b = ''.join(a)
print(b)