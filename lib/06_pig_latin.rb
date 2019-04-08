def translate(word)

def vowel(element)
  if element[0] == ("a" || "e" || "i" || "u" || "o")
    return element.insert(-1, "ay")
  end
end

def consonant(element)
  if element[0] && element[1] != ("a" || "e" || "i" || "o" || "u" || "y")
  		return element.delete(element[0..1]) + element[0..1] + "ay"
  end
end

def doubleconsonant(element)
  if element[0] != ("a" || "e" || "i" || "o" || "u" || "y")
  		return element.reverse + "ay"
  end
end

def single(element)
	if element[0.. 1] == "sc"
		return element[3.. element.size - 1] + element[0.. 2] + "ay"
	elsif element[0.. 1] == "qu"
		return element[2.. element.size - 1] + element[0.. 1] + "ay"
  end
end

def qu(element)
  	if element[0.. 1].match(/[qu]/) || element[1.. 2].match(/[qu]/)
  		return element[(element.size/2).. element.size] + element[0.. (element.size/2)-1] + "ay"
  	end
end

  return consonant("square")

end
