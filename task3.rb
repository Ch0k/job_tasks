# Дана строка ​s​ и словарь ​dict,​ содержащий некие слова. Определите, можно ли
# строку ​s​ сегментировать в последовательность разделенных пробелом слов,
# содержащихся в словаре ​dict​.
# Пример: дано, ​s​ = «двадесятка», ​dict​ = [«два», «десятка», «девятка»]. Программа
# должна вернуть ​true​, потому что «двадесятка» могут быть сегментированы как «два
# десятка».

s = 'двадесятка'
dict = %w[два десятка девятка]

def check(s, dict)
  dict.each { |word| s.gsub!(word, '') if s.include?(word) }
  puts true if s.empty?
end

check(s, dict)