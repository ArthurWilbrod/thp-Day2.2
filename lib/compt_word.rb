




def word_counter(str,dictionnary)

  hash_result = Hash.new
  str_test = str.downcase
  for index in (0...dictionnary.size)do
        test= dictionnary[index]
        cle = str_test.scan(/#{test}/).count
        if cle > 0
          hash_result.store(test, cle)
        end
  end

  return hash_result

end



dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts word_counter("Howdy partner, sit down! How's it going?", dictionnary)
# {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
