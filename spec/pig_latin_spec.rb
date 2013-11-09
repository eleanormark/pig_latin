require "pig_latin"
require "rspec"

describe "translate" do

  it "translates a simple word" do
    s = translate("nix")
    s.should == "ixnay"
  end

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    s.should == "appleay"
  end

  it "translates two words" do
    s = translate("eat pie")
    s.should == "eatay iepay"
  end

  it "translates a word with two consonants" do
    s = translate("stupid")
    s.should == "upidstay"
  end

  it "gloms several consonants in a row" do
    translate("three").should == "eethray"
  end

    it "counts 'sch' as a single phoneme" do
    s = translate("school")
    s.should == "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    s.should == "ietquay"
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    s.should == "ethay ickquay ownbray oxfay"
  end

    it "translates a capitalized simple word beginning with a vowel" do
    s = translate("Apple")
    s.should == "Appleay"
  end

    it "translates a capitalized word beginning with a consonant" do
    s = translate("School")
    s.should == "Oolschay"
  end

    it "translates many capitalized words" do
    s = translate("The Quick Brown Fox")
    s.should == "Ethay Ickquay Ownbray Oxfay"
  end

    it "translates and retain '!'" do
    s = translate("Apple!")
    s.should == "Appleay!"
  end

   it "translates two words with '!!!'" do
    s = translate("Eat pie!!!")
    s.should == "Eatay iepay!!!"
  end
        
    it "translates many capitalized words and retain punctuations" do
    s = translate("The Quick Brown Fox eats pie, apple and? Eat pie.")
    s.should == "Ethay Ickquay Ownbray Oxfay eatsay iepay, appleay anday? Eatay iepay."
  end
end