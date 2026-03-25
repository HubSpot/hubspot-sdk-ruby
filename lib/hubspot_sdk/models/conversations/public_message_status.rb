# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageStatus < HubspotSDK::Internal::Type::BaseModel
        # @!attribute status_type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicMessageStatus::StatusType]
        required :status_type,
                 enum: -> { HubspotSDK::Conversations::PublicMessageStatus::StatusType },
                 api_name: :statusType

        # @!attribute failure_details
        #
        #   @return [HubspotSDK::Models::Conversations::PublicMessageFailureDetails, nil]
        optional :failure_details,
                 -> { HubspotSDK::Conversations::PublicMessageFailureDetails },
                 api_name: :failureDetails

        # @!method initialize(status_type:, failure_details: nil)
        #   @param status_type [Symbol, HubspotSDK::Models::Conversations::PublicMessageStatus::StatusType]
        #   @param failure_details [HubspotSDK::Models::Conversations::PublicMessageFailureDetails]

        # @see HubspotSDK::Models::Conversations::PublicMessageStatus#status_type
        module StatusType
          extend HubspotSDK::Internal::Type::Enum

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
