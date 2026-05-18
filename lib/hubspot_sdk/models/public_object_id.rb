# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PublicObjectID < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the public object.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Contains the Id of a Public Object
      #
      #   @param id [String] The unique identifier for the public object.
    end
  end
end
