# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicAuditInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action
        #
        #   @return [String]
        required :action, String

        # @!attribute identifier
        #
        #   @return [String]
        required :identifier, String

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute from_user_id
        #
        #   @return [Integer, nil]
        optional :from_user_id, Integer, api_name: :fromUserId

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute raw_object
        #
        #   @return [Object, nil]
        optional :raw_object, HubspotSDK::Internal::Type::Unknown, api_name: :rawObject

        # @!attribute timestamp
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(action:, identifier:, portal_id:, from_user_id: nil, message: nil, raw_object: nil, timestamp: nil)
        #   @param action [String]
        #   @param identifier [String]
        #   @param portal_id [Integer]
        #   @param from_user_id [Integer]
        #   @param message [String]
        #   @param raw_object [Object]
        #   @param timestamp [Time]
      end
    end
  end
end
