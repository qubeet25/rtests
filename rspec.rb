require_relative "homework"
require "rspec"

describe "#find_difference(a, b)" do
    context "given identical arrays"
    it "returns 0" do
        expect(find_difference([1, 1, 1], [1, 1, 1])).to eql(0)
    end

    context "given float numbers in arrays"
    it "returns valid result" do
    expect(find_difference([1, 1.5, 3], [1.5, 1.5, 1.5])).to eql(1.125)
    end

    context "given standart values"
    it "returns valid result" do
        expect(find_difference([100, 200, 400], [500, 800, 1000])).to eql(392_000_000)
    end
end


describe "#billboard(name, price=30)" do
    context "given 0 as price"
    it "returns 0" do
        expect(billboard("Billboard", 0)).to eql(0)
    end

    context "given Billboard as the name and 100 as the price"
    it "returns valid value 900" do
        expect(billboard("Billboard", 100)).to eql(900)
    end

    context "given nil as name"
    it "returns exception" do
        expect{billboard(nil)}.to raise_error(NoMethodError)
    end

    context "given only Billboard as name"
    it "returns valid value 270" do
        expect(billboard("Billboard")).to eql(270)
    end
end

describe "#get_middle(s)" do

    context "given odd-length string (latin)"
    it "returns single middle character" do
        expect(get_middle("abcde")).to eql("c")
    end

    context "given odd-length string (cyrillic)"
    it "returns single middle character" do
        expect(get_middle("абвгд")).to eql("в")
    end

    context "given even-length string (latin)"
    it "returns two middle characters" do
        expect(get_middle("abcd")).to eql("bc")
    end

    context "given even-length string (cyrillic)"
    it "returns two middle characters" do
        expect(get_middle("абвг")).to eql("бв")
    end
end

describe "#expanded_form(num)" do
    context "given number without zero"
    it "returns valid result" do
        expect(expanded_form(123)).to eql("100 + 20 + 3")
    end

    context "given number with two zeros"
    it "returns valid result" do
        expect(expanded_form(102030)).to eql("100000 + 2000 + 30")
    end

    context "given number with 10 digits"
    it "returns valid result" do
        expect(expanded_form(1234567890)).to eql("1000000000 + "\
            "200000000 + 30000000 + 4000000 + 500000 + "\
            "60000 + 7000 + 800 + 90")
    end
end

describe "increment_string(input)" do
    context "given string containing only number"
    it "returns incremented number" do
        expect(increment_string("21")).to eql("22")
    end

    context "given string containing number in the end"
    it "returns string with incremented number" do
        expect(increment_string("value102")).to eql("value103")
    end

    context "given string containing zero(s) before number in the end"
    it "returns incremented number" do
        expect(increment_string("value01050")).to eql("value01051")
    end

    context "given string without number"
    it "returns incremented number" do
        expect(increment_string("value")).to eql("value1")
    end
end