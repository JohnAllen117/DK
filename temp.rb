word 'foobar'
i = 0
for word[i] in word.size / 2 do
  if word[i] != word[word.size - i - 1]
    return false
  end
end
return true
