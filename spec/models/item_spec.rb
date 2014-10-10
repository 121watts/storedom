require 'rails_helper'

describe Item do
  it 'item is active by default' do
    item = Item.new
    item.save
    expect(item.active).to be true
  end

  it 'can only see active items' do
    10.times do Item.create(active: false)
    end
    Item.create(active: true)
    all = Item.all
    items = Item.active_items
    expect(all.count).to_not eq items.count
  end

  
end
