# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicMessageStatus < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute status_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicMessageStatus::StatusType]
        required :status_type,
                 enum: -> { HubSpotSDK::Conversations::PublicMessageStatus::StatusType },
                 api_name: :statusType

        # @!attribute failure_details
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicMessageFailureDetails, nil]
        optional :failure_details,
                 -> { HubSpotSDK::Conversations::PublicMessageFailureDetails },
                 api_name: :failureDetails

        # @!method initialize(status_type:, failure_details: nil)
        #   @param status_type [Symbol, HubSpotSDK::Models::Conversations::PublicMessageStatus::StatusType]
        #   @param failure_details [HubSpotSDK::Models::Conversations::PublicMessageFailureDetails]

        # @see HubSpotSDK::Models::Conversations::PublicMessageStatus#status_type
        module StatusType
          extend HubSpotSDK::Internal::Type::Enum

          FAILED = :FAILED
          READ = :READ
          RECEIVED = :RECEIVED
          SENT = :SENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
