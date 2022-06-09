require "./lib/caesar.rb"
#-format documentation

describe "#caesar_cipher" do
    it "shifts letters with small positive shift" do
        expect(caesar_cipher('Aa',5)).to eql('Ff')
    end
    it "Shifts phrases with small positive shift" do
        expect(caesar_cipher('Hello There',5)).to eql("Mjqqt Ymjwj")
    end
    it "Works with a negative number" do
        expect(caesar_cipher('Ee',-3)).to eql('Bb')
    end
    it "Works with punctuation" do
        expect(caesar_cipher('What a String!',5)).to eql("Bmfy f Xywnsl!")
    end
end