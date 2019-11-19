
@arr = [3,5,6,7,8,9,10,11,12,13,14,23,26]

def summ(n)
    return 0 if n < 0
    return @arr[0] if n == 0
    @arr[n] + summ(n - 1) if n >= 0
end

def countt(n)
    return 0 if n == 0
    return 1 if n == 1
    1 + countt(n - 1) if n >= 1
end

def maxx(n, m = nil)
    return m if n < 0
    if m == nil
        @arr[n] < @arr[n-1] ? m = @arr[n-1] : m = @arr[n]
    else
        m = @arr[n] if m < @arr[n]
    end
    maxx(n - 1, m)
end

def binary(x, low, high)
    mid = low + (high - low) / 2
    return mid if @arr[mid] == x
    if x > @arr[mid] 
        binary(x, mid, high)
    elsif x < @arr[mid]
        binary(x, low, mid)
    end
end

puts "Сумма  #{summ(@arr.size - 1)}"
puts "Количество элементов #{countt(@arr.size)}"
puts "Наибольшее число из списка #{maxx(@arr.size - 1)}"
puts "Бинарный поиск #{binary(11, 0, @arr.size - 1)}"