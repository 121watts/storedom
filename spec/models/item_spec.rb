require 'rails_helper'

describe Item do
  it 'item is active by default' do
    item = Item.new
    item.save
    expect(item.active).to be true
  end
end
