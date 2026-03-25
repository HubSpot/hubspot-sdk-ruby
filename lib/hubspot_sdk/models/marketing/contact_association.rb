# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ContactAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_id
        #   The internal ID of the contact in HubSpot
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute email
        #   The email of the contact in HubSpot
        #
        #   @return [String]
        required :email, String

        # @!attribute firstname
        #   The first name of the contact in HubSpot
        #
        #   @return [String, nil]
        optional :firstname, String

        # @!attribute lastname
        #   The last name of the contact in HubSpot
        #
        #   @return [String, nil]
        optional :lastname, String

        # @!method initialize(contact_id:, email:, firstname: nil, lastname: nil)
        #   @param contact_id [String] The internal ID of the contact in HubSpot
        #
        #   @param email [String] The email of the contact in HubSpot
        #
        #   @param firstname [String] The first name of the contact in HubSpot
        #
        #   @param lastname [String] The last name of the contact in HubSpot
      end
    end
  end
end
