def caesar_cipher(plain_text,shift)
    ascii_values=plain_text.split("").map{ |element| element.ord }

    cipher_ascii= ascii_values.map do |ascii|
       if ascii.between?(65,90)
            if shift>0
                ascii + shift > 90 ? (ascii + shift)-26 : ascii +shift
            else
                ascii + shift < 65 ? (ascii + shift)+26 : ascii +shift
            end
       elsif ascii.between?(97,122)
            if shift>0
                ascii + shift > 122 ? (ascii + shift)-26 : ascii +shift
            else
                ascii + shift < 97 ? (ascii + shift)+26 : ascii +shift
            end
       else
           ascii
       end
    end
    cipher_text=cipher_ascii.map{|a| a.chr}.join
    cipher_text
end
=begin
puts "Enter the string to encode"
plain_text=gets.chomp
puts "Enter the shift value"
shift=gets.chomp.to_i

p caesar_cipher(plain_text,shift)
=end
    