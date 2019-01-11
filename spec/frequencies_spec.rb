require_relative "../frequencies"

sentence = "dummy.txt"

describe "#word_count" do
  it "is a hash" do
    expect(word_count(sentence).class).to eq(Hash)
  end

  it "should count 'fox' once in the dummy sentence" do
    expect(word_count(sentence)["fox"]).to eq(1)
  end


  it "should return a size of 7 on dummy sentence" do
    expect(word_count(sentence).size).to eq(7)
  end

  it "should check for special characters in the histogram"  do
    expect(word_count(sentence)['.']).to eq(nil)
  end

end
  # it "should not be case sensitive" do
  # expect
  # end

