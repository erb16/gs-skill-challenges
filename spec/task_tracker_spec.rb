require "task_tracker"

RSpec.describe "task_tracker method" do
  
  context "given an empty string" do
    it "fails" do
      expect { task_tracker("") }.to raise_error "No text provided."
    end
  end
# task_tracker("#TODO walk the dog") => true
  context "given a string containing #TODO" do
    it "returns true" do
      expect(task_tracker("#TODO walk the dog")).to eq true
    end
  end

# task_tracker("#todo walk the dog") => true
  context "given a string that contains lowercase #todo" do
    it "returns true" do
      expect(task_tracker("#todo walk the dog")).to eq true
    end
  end

  context "given a string that contains a mixture of uppercase and lowercase #TODO" do
    it "returns true" do
      expect(task_tracker("#tOdO walk the dog")).to eq true
    end 
  end


# task_tracker("walk the dog") => false
  context "given a string that doesn't contain #TODO" do
    it "returns false" do
      expect(task_tracker("walk the dog")).to eq false
    end
  end

# task_tracker("#TODO, #TODO") => true
  context "given a string containing repeated #TODOs" do
    it "returns true" do
      expect(task_tracker("#TODO, #TODO")).to eq true
    end
  end

end
