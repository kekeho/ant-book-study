import tables

proc fact(n: int): int =
    if (n == 0):
        return 1
    
    return n * fact(n - 1)


proc fib(n: int): int =
    if (n <= 1):
        return 1
    return fib(n - 1) + fib(n - 2)


var memofib_table: Table[int, int]
proc memofib(n: int): int =
    if (n <= 1):
        return 1
    
    if not memofib_table.hasKey(n):
        memofib_table[n] = memofib(n - 1) + memofib(n - 2)
    
    return memofib_table[n]

echo memofib(40)
    