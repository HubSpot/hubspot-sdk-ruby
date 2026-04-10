# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationMessageUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute status_type
        #   Valid status are SENT, FAILED, and READ
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType]
        required :status_type,
                 enum: -> {
                   HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType
                 },
                 api_name: :statusType

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, api_name: :errorMessage

        # @!method initialize(status_type:, error_message: nil)
        #   @param status_type [Symbol, HubSpotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType] Valid status are SENT, FAILED, and READ
        #
        #   @param error_message [String]

        # Valid status are SENT, FAILED, and READ
        #
        # @see HubSpotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest#status_type
        module StatusType
          extend HubSpotSDK::Internal::Type::Enum

          FAILED = :FAILED
          READ = :READ
          SENT = :SENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
