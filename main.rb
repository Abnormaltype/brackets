def valid_string?(braces)
  (braces.size/2).times do |item|
    braces.gsub!('{}', '')
    braces.gsub!('[]', '')
    braces.gsub!('()', '')
  end
  braces.empty?
end

puts valid_string?("(){}[]")
puts valid_string?("([{}])")
puts valid_string?("(}")
puts valid_string?("[(])")
puts valid_string?("[({})](]")
