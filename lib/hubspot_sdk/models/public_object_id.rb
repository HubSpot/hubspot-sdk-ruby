# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicObjectID < HubspotSDK::Internal::Type::BaseModel
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
