





def chiffre_de_cesar(user_string, factor)
    array = user_string.split("")  
    array.map! do |i|
   
		ascii = i.ord + factor
		#ascii += factor
		unless (ascii >= 97 && ascii <= 122) || (ascii >= 65 && ascii <= 90)
				ascii -= 26
		end
		ascii.chr

    end

	puts array.join
end

chiffre_de_cesar("zoro", 2)



