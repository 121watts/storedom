require 'rails_helper'

describe 'Our API' do
  it 'returns all our items' do
    5.times { Item.create }

    get '/api/v1/items.json'
    json = JSON.parse(response.body)
    expect(json.count).to eq 5
  end

  it 'can create new items' do
    post '/api/v1/items.json', item: { name: 'Hello', description: 'Go away' }
    expect(response.status).to eq 201

    item = Item.last
    expect(item.name).to eq 'Hello'
    expect(item.description).to eq 'Go away'
  end
end
