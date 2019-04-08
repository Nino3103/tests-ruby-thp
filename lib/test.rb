def titleize(element)
	n = element.split.map(&:capitalize)
	if n.match(/[And]/)
		n.sub!("And", "and")
	end

  if n.match(/[Or]/)
		n.sub!("Or", "or")
	end

  if n.match(/[the]/)
		n.sub!("The", "the")
	end
	puts n
end

titleize("my name is yolo the badass and I think you are either crazy or intelligent")
