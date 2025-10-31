# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationMessageUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute status_type
        #   Valid status are SENT, FAILED, and READ
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType]
        required :status_type,
                 enum: -> {
                   HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType
                 },
                 api_name: :statusType

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, api_name: :errorMessage

        # @!method initialize(status_type:, error_message: nil)
        #   @param status_type [Symbol, HubspotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType] Valid status are SENT, FAILED, and READ
        #
        #   @param error_message [String]

        # Valid status are SENT, FAILED, and READ
        #
        # @see HubspotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest#status_type
        module StatusType
          extend HubspotSDK::Internal::Type::Enum

          SENT = :SENT
          FAILED = :FAILED
          READ = :READ

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
