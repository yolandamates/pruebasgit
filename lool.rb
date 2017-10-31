

=begin

def repeat(string, times)
    fail "times debe ser 1 o mayor que 1" if times < 1
    counter= 0
    loop do 
         puts string
          counter +=1
          if counter >=times             
            break
          end
    end
end

repeat("Hola Clase",5)

ramdon_number= Random.new.rand(5)

puts ramdon_number


answer=""
while answer!= "n"
    print "Quieres seguir con este despropsisto"
    answer=gets.chomp.downcase
end
=end



def ask(question, kind="string")
    print question + " "
    answer =gets.chomp
    answer= answer.to_i if kind =="number"
    return answer
end

#answer = ask("Como te llamas?")
#puts answer

def add_contact
    #Creamos un hash con dos claves, nombreque es un string y telefono que es un array
    contact = {"name" => "", "phone_numbers" => []}
    #añadimos el nombre con el metodo ask creado previamente
    contact["name"] = ask("Introduce el nombre del contacto")
    answer = ""
    #Usamos un loop para ver si quiere añadir más o cerrar el programa
    while answer != "n"
      answer = ask("Quieres añadir un número de teléfono? (s/n)")
      #Si dice que si, volvemos a usar el metodo ask para pedir el telefono, si sigue añadiendo entremos en blucle
      if answer == "s"
        phone = ask("Introduce el número:")
        contact["phone_numbers"].push(phone)
      end
    end
    return contact
  end
  
  contact_list = []
  
  answer = ""
  while answer != "n"
    contact_list.push(add_contact())
    #Preguntamos si quiere añadir otro contacto
    answer = ask("Quieres añadir otro? (s/n)")
  end
  
  puts "--------------------"
  #Que resuelvan esto también los alumnos que van más rápido
  
  contact_list.each do |contact|
    puts "Nombre: #{contact["name"]}"
    if contact["phone_numbers"].size > 0
      contact["phone_numbers"].each do |phone_number|
        puts "Teléfono: #{phone_number}"
      end
    end
    puts "--------------------\n"
  end
  
  