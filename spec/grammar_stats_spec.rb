require "grammar_stats"

RSpec.describe GrammarStats do
  
    it "adds one to total texts counter if sentence given w/ CL & SE" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("Hello there!")
      expect(result).to eq 1
    end
  

    it "returns false if sentence given w/out CL" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("ello there!")
      expect(result).to eq 1
    end

    it "returns false if sentence given w/out SE" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("Hello there")
      expect(result).to eq 1
    end

    it "fails if no string is given" do
      grammar_stats = GrammarStats.new
      expect { grammar_stats.check("") }.to raise_error "Not a sentence"
    end
    
    it "calculates percentage" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("hello, there")
      grammar_stats.check("It's nice to meet you!")
      result = grammar_stats.percentage_good
      expect(result).to eq 50
    end


end

