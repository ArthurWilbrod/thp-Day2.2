require_relative '../lib/caesar_cipher.rb'

describe "the cipher is working" do
  it "should return when an integer is a multiple of 3 or 5" do
    expect(caesar_cipher("a bb cac", 1)).to eq("b cc dbd")
    expect(caesar_cipher("a bb cac", 2)).to eq("c dd ece")
    expect(caesar_cipher("a bb cac", 3)).to eq("d ee fdf")
  end
end
