def get_most_common_letter(text)
  counter = Hash.new(0)
  p "counter is #{counter}"
  p "text.chars.each is #{text.chars.each}"
  text.delete! " "
  text.chars.each do |char|
    counter[char] += 1
    # p counter[char] += 1
  end

  p "counter = #{counter}"
p "counter.sort_by { |k, v| k } = #{counter.sort_by { |k, v| -v }}"


counter.sort_by { |k, v| -v }[0][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
