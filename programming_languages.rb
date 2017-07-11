def reformat_languages(languages)
  # your code here
new_hash = Hash.new(0)
languages.each do |style, name|
  name.each do |lang, type|
    type.each do |inside, value|
##binding.pry
if !new_hash.has_key?(lang)

      new_hash.merge!(lang => {inside => value, :style => [style]})
else
##binding.pry

  new_hash[lang][:style] << style
end
    end
  end
end
new_hash
end
