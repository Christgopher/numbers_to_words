class Fixnum
  define_method(:numb_to_word) do
    final_array_nosyn = []
    loop_counter = 0
    teen_counter = 0
    number_array = []
    numbers = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four",
5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    numbers_tey = {0 => "", 2 => "twenty", 3 => "thirty", 4 => "forty",
5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
    numbers_teen = {1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen",
5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen" }
    temp_array = self.to_s.split('').reverse!()
    temp_array.each() do |numb|
      number_array.push(numb.to_i())
    end

    number_array.each() do |numb|
      if loop_counter.==(1) || (loop_counter.==(4))
          if numb.==(1)
            finder = final_array_nosyn.pop()
            finder2 = numbers.key(finder)
            final_array_nosyn.push("")
            final_array_nosyn.push(numbers_teen.fetch(finder2))
          else
            final_array_nosyn.push(numbers_tey.fetch(numb))
          end
      else
          final_array_nosyn.push(numbers.fetch(numb))
      end
        loop_counter = loop_counter.+(1)

    end
    if final_array_nosyn.length().>=(7)
      final_array_nosyn.insert(6, "million")
    end
    if final_array_nosyn.length().>=(6)
      final_array_nosyn.insert(5, "hundred")
    end
    if final_array_nosyn.length().>=(4)
      final_array_nosyn.insert(3, "thousand")
    end
    if final_array_nosyn.length().>=(3)
      final_array_nosyn.insert(2, "hundred and")
    end
    final_array_nosyn.reverse().join(" ")
  end
end
