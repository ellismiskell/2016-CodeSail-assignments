def fizzbuzz(n)
   if (n%3 == 0) && (n%5 == 0)
     puts "fizzbuzz"
   elsif (n%3 == 0)
     puts "fizz"
   elsif (n%5 == 0)
     puts "buzz"
   else
     puts n
   end
 end

1.upto(1000) do |n|
  fizzbuzz(n)
end

fizzbuzz_ary = Array(1..1000)

fizzbuzz_ary.map do |n|
  fizzbuzz(n)
end

fizzbuzz_ary.each do |n|
  fizzbuzz(n)
end

p = Proc.new do |n|
  if (n%3 == 0) && (n%5 == 0)
    puts "fizzbuzz"
  elsif (n%3 == 0)
    puts "fizz"
  elsif (n%5 == 0)
    puts "buzz"
  else
    puts n
  end
end

1.upto(1000) do |n|
  p.call(n)
end

fizzbuzz_ary = Array(1..1000)

fizzbuzz_ary.map do |n|
  p.call(n)
end

fizzbuzz_ary.each do |n|
  p.call(n)
end

l = lambda do |n|
  if (n%3 == 0) && (n%5 == 0)
    puts "fizzbuzz"
  elsif (n%3 == 0)
    puts "fizz"
  elsif (n%5 == 0)
    puts "buzz"
  else
    puts n
  end
end

1.upto(1000) do |n|
  l.call(n)
end

fizzbuzz_ary = Array(1..1000)

fizzbuzz_ary.map do |n|
  l.call(n)
end

fizzbuzz_ary.each do |n|
  l.call(n)
end
