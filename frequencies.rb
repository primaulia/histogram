def read_file(path)
  File.open(path)
end

def word_count(filepath)
  # read the file
  file = read_file(filepath)
  text = file.read().strip()

  bad_characters = ['.', ',', '(', ')', '[', ']', '1']
  # remove all special characters
  bad_characters.each do |char|
    text.gsub!(char, '')
  end

  # split the file into an array
  words_array = text.split

  # create an empty hist hash
  hist_hash = {}

  # iterate through the array, if the index already exists,
  # increment value by one, else create index with value 1
  words_array.each do |word|
    word.downcase!
    if hist_hash.key?(word)
      hist_hash[word] += 1
    else
      hist_hash[word] = 1
    end
  end

  # return the hash
  return hist_hash
end

# to sort the hash values by count
histogram = word_count("article.txt")
histogram.sort_by { |word, frequency| frequency }.reverse.each do |word, frequency|
  puts "#{frequency}: #{word}"
end







