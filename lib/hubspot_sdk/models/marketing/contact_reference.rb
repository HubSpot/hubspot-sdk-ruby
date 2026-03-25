# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ContactReference < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the contact.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] Unique identifier for the contact.
      end
    end
  end
end
