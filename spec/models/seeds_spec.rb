describe Seed::Item do
  it 'creates the number of items i want' do
    expect(Item.all.count).to eq 0
    Seed::Item.generate(100)
    expect(Item.all.count).to eq 100
  end
end

describe Seed::Order do
  it 'creates the number of orders i want' do
    expect(Order.all.count).to eq 0
    Seed::Order.generate(100)
    expect(Oder.all.count).to
    
  end
end
