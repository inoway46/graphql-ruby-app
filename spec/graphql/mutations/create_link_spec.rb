require 'rails_helper'

RSpec.describe Mutations::CreateLink do
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  describe 'create link' do
    it 'link to be created' do
      link = perform(url: 'http://example.com', description: 'description')
      expect(link.persisted?).to be true
    end
  end
end
