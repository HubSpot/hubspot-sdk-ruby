# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ContactID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute vid
        #
        #   @return [Integer, nil]
        optional :vid, Integer

        # @!method initialize(portal_id:, email: nil, vid: nil)
        #   @param portal_id [Integer]
        #   @param email [String]
        #   @param vid [Integer]
      end
    end
  end
end
