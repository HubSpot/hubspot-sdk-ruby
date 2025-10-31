# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::Messages#update
        class MessageUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [String]
          required :channel_id, String

          # @!attribute status_type
          #   Valid status are SENT, FAILED, and READ
          #
          #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageUpdateParams::StatusType]
          required :status_type,
                   enum: -> { HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType },
                   api_name: :statusType

          # @!attribute error_message
          #
          #   @return [String, nil]
          optional :error_message, String, api_name: :errorMessage

          # @!method initialize(channel_id:, status_type:, error_message: nil, request_options: {})
          #   @param channel_id [String]
          #
          #   @param status_type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageUpdateParams::StatusType] Valid status are SENT, FAILED, and READ
          #
          #   @param error_message [String]
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          # Valid status are SENT, FAILED, and READ
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
end
