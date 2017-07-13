#code cesar
#encodage d'une string a part d'un chiffre de décalage


def chiffre_de_cesar(user_string, factor)
    array = user_string.split("")  #eclatement de la string en array 
    array.map! do |i| 
   
		ascii = i.ord  #transforme en chiffre
		ascii += factor  #ajout du décalage
		
		unless (ascii >= 97 && ascii <= 122) || (ascii >= 65 && ascii <= 90)
				ascii -= 26
		end

		ascii.chr #transform en lettre 

    end

	puts array.join #rassemble les valeurs du tableau array
end

chiffre_de_cesar("zoro", 2)



