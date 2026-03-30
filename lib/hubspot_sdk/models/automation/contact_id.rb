# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ContactID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_id
        #   The ID of the portal associated with the contact.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute email
        #   The email address of the contact.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute vid
        #   The unique identifier for the contact.
        #
        #   @return [Integer, nil]
        optional :vid, Integer

        # @!method initialize(portal_id:, email: nil, vid: nil)
        #   @param portal_id [Integer] The ID of the portal associated with the contact.
        #
        #   @param email [String] The email address of the contact.
        #
        #   @param vid [Integer] The unique identifier for the contact.
      end
    end
  end
end
