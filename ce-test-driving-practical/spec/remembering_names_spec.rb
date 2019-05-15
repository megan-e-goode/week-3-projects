require 'store-names'

describe "stores peoples names" do
  it 'adds the name of a person' do
    expect(add_name("Meg")).to eq("Name stored!")
  end
end
