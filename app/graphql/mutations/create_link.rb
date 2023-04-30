module Mutations
  class CreateLink < BaseMutation
    # arguments passed to the `resolve` method
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description:, url:)
      Link.create!(description:, url:)
    end
  end
end
