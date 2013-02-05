require_relative "../lib/spelly"

describe Spelly do

  it "should load a dictionary given a language" do
    Spelly.new("en_GB").dict.should 
  end

  context "#spell_check" do
    it "should return suggestions for misspelt words" do
      words = %w/girll boy dog/
      spelly = Spelly.new("en_GB")
      spelly.spell_check(words).should == [{:word=>"girll", :suggest=>["grill", "girl", "gill", "girls", "girl l"]}]
    end
  end

end