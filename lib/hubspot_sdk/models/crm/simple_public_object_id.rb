# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end
    end
  end
end
