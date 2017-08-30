def ftoc fahrenheit
    conversion = (5.to_f/9.to_f)
    celsius = (fahrenheit.to_f - 32) * conversion
    return celsius
end

def ctof celsius
    conversion = (9.to_f/5.to_f)
    fahrenheit = (celsius.to_f * conversion) + 32
    return fahrenheit
end