require 'rails_helper'

RSpec.describe Link, type: :model do
  it 'sample test' do
    link = Link.new(url: 'https://example.com', description: 'test')
    expect(link.valid?).to be true
  end
end
