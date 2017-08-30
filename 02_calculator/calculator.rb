def add (num1, num2)
    result = num1 + num2
    return result
end

def subtract (num1, num2)
    result = num1 - num2
    return result
end

def sum nums
    result = 0
    if nums.length > 0
        nums.each do |number|
            result += number
        end
    end
    return result
end

def multiply nums
    result = 1
    if nums.length > 0
        nums.each do |number|
            result *= number
        end
    end
    return result
end

def power num1, num2
    result = num1 ** num2
    return result
end

def factorial num
    result = 1
    if num > 0
        until num == 0
            result *= num
            num -= 1
        end
    else if num < 0
        return "Please enter a posetive number"
    end
    end
    return result
end