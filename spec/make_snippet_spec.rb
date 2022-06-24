require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns the first five words of a string and replaces extra words with ..." do
    result = make_snippet("this string is five words long")
    expect(result).to eq "this string is five words ..."
  end

end

# require 'add_five'

# RSpec.describe "add_five method" do
#   it "adds 5 to 3 to return 8" do
#     result = add_five(3)
#     expect(result).to eq 8
#   end
# end
