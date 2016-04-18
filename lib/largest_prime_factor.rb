def largest_prime_factor(num)
  factor = 2
  i = 3
  prime_arr = []
  while i < num #i is the number you are checking if it is prime
    if num % i == 0 && check_prime(factor, i)
      prime_arr.push(i)
    end
    i+=1
  end
  prime_arr.last
end

def check_prime(factor, i)
  while factor < i
    if i % factor != 0
      true #i is prime
    else
      return false
    end
    factor += 1
  end
  true
end
