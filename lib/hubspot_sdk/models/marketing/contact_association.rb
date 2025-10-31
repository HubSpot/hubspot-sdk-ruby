# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ContactAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_id
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute firstname
        #
        #   @return [String, nil]
        optional :firstname, String

        # @!attribute lastname
        #
        #   @return [String, nil]
        optional :lastname, String

        # @!method initialize(contact_id:, email:, firstname: nil, lastname: nil)
        #   @param contact_id [String]
        #   @param email [String]
        #   @param firstname [String]
        #   @param lastname [String]
      end
    end
  end
end
