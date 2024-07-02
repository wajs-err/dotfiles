def once(fun):
    
    def wraper(*args, **kwargs):
        pass
    return wraper

@once
def f(x, y):
    print(x, y)

f(2, [1, 2])
