require 'grammar_checker'

RSpec.describe "grammar_checker method" do
  context "when given a string that begins with a capital letter and ends with a ." do
    it "returns boolean value true" do
      result = grammar_checker("Hello, there.")
      expect(result).to eq true
    end
  end

  context "when given a string that begins with a capital letter and ends with a !" do
    it "returns boolean value true" do
      result = grammar_checker("Hello, there!")
      expect(result).to eq true
    end
  end

  context "when given a string that begins with a capital letter and ends with a ?" do
    it "returns boolean value true" do
      result = grammar_checker("Hello, there?")
      expect(result).to eq true
    end
  end

  context "when given a string that begins with a lowercase letter and ends with a ." do
    it "returns boolean value true" do
      result = grammar_checker("hello, there.")
      expect(result).to eq false
    end
  end

  context "when given a string that begins with a capital letter and ends without a ." do
    it "returns boolean value true" do
      result = grammar_checker("Hello, there")
      expect(result).to eq false
    end
  end

  context "when given a string that begins with a lowercase letter and ends without a ." do
    it "returns boolean value true" do
      result = grammar_checker("hello, there")
      expect(result).to eq false
    end
  end

  context "when given a string that begins with a capital letter and ends with a ," do
    it "returns boolean value true" do
      result = grammar_checker("Hello, there,")
      expect(result).to eq false
    end
  end

  context "given an empty string" do
    it "fails" do
      expect { grammar_checker("") }.to raise_error "Not a sentence"


    end
  end
end


