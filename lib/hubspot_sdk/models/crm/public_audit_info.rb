# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicAuditInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action
        #   The action performed that triggered the audit event.
        #
        #   @return [String]
        required :action, String

        # @!attribute identifier
        #   A unique string identifier for the audit event.
        #
        #   @return [String]
        required :identifier, String

        # @!attribute portal_id
        #   The unique identifier for the HubSpot portal where the audit event occurred.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute from_user_id
        #   The ID of the user who initiated the audit event.
        #
        #   @return [Integer, nil]
        optional :from_user_id, Integer, api_name: :fromUserId

        # @!attribute message
        #   A descriptive message related to the audit event.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute raw_object
        #   An object containing the raw data associated with the audit event.
        #
        #   @return [Object, nil]
        optional :raw_object, HubspotSDK::Internal::Type::Unknown, api_name: :rawObject

        # @!attribute timestamp
        #   The date and time when the audit event took place.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(action:, identifier:, portal_id:, from_user_id: nil, message: nil, raw_object: nil, timestamp: nil)
        #   @param action [String] The action performed that triggered the audit event.
        #
        #   @param identifier [String] A unique string identifier for the audit event.
        #
        #   @param portal_id [Integer] The unique identifier for the HubSpot portal where the audit event occurred.
        #
        #   @param from_user_id [Integer] The ID of the user who initiated the audit event.
        #
        #   @param message [String] A descriptive message related to the audit event.
        #
        #   @param raw_object [Object] An object containing the raw data associated with the audit event.
        #
        #   @param timestamp [Time] The date and time when the audit event took place.
      end
    end
  end
end
