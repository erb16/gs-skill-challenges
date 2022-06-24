require 'reading_time'

RSpec.describe "reading_time method" do
  context "when text is 200 words long"
  it "calculates estimated reading time for 200 words" do
    result = reading_time("one " * 200)
    expect(result).to eq 1
  end

  it "calculates estimated reading time for 400 words" do
    result = reading_time("one " * 400)
    expect(result).to eq 2
  end

  it "calculates estimated reading time for 0 words" do
    result = reading_time("")
    expect(result).to eq 0
  end

  it "calculates estimated reading time for a text below 200 and rounds up" do
    result = reading_time("one")
    expect(result).to eq 1
  end

  it "calculates estimated reading time for 5000 words" do
    result = reading_time("one " * 5000)
    expect(result).to eq 25
  end

  it "calculates estimated reading time for 150 words and rounds up" do
    result = reading_time("one " * 150)
    expect(result).to eq 1
  end

end