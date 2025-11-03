# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicObjectID < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID that identifies an object.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String] The unique ID that identifies an object.
    end
  end
end
