# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Contains the Id of a Public Object
        #
        #   @param id [String] The unique ID of the object.
      end
    end
  end
end
