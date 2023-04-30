require 'rails_helper'

RSpec.describe Mutations::CreateLink do
  describe 'create link' do
    it 'link to be created' do
      query_string = <<-GRAPHQL
        mutation {
          createLink(input: {
            url: "https://example.com/model_test",
            description: "model test",
          }
          ) {
            id
            url
            description
          }
        }
      GRAPHQL
      result = GraphqlRubyAppSchema.execute(query_string)
      expect(result.dig('data', 'createLink')).not_to be_blank
      link = Link.find_by(url: 'https://example.com/model_test')
      expect(link.present?).to be true
    end
  end
end
