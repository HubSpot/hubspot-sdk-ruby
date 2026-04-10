# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PublicObjectID < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   ID of the object
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   Contains the Id of a Public Object
      #
      #   @param id [String] ID of the object
    end
  end
end
