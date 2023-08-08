def count_vietnamese_letters(input)
  mapping = {
    'aw' => 'ă',
    'aa' => 'â',
    'dd' => 'đ',
    'ee' => 'ê',
    'oo' => 'ô',
    'ow' => 'ơ',
    'w'  => 'ư'
  }

  count = 0
  i = 0

  while i < input.length
    found = false

    mapping.keys.each do |pattern|
      if input[i, pattern.length] == pattern
        count += 1
        i += pattern.length
        found = true
        break
      end
    end

    if !found
      i += 1
    end
  end

  count
end

print 'Nhập chuỗi chữ cái Latin: '
input = gets.chomp
result = count_vietnamese_letters(input)
puts "Số lượng chữ cái Tiếng Việt có thể tạo ra: #{result}"
