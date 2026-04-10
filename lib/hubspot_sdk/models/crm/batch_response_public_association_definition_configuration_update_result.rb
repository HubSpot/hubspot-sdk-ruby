# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationDefinitionConfigurationUpdateResult < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch update operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult] }

        # @!attribute started_at
        #   The date and time when the batch update operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch update operation, which can be CANCELED,
        #   COMPLETE, PENDING, or PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status]
        required :status,
                 enum: -> { HubSpotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status }

        # @!attribute links
        #   URLs linking to documentation or resources associated with the batch update
        #   operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch update operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch update operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult>]
        #
        #   @param started_at [Time] The date and time when the batch update operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status] The current status of the batch update operation, which can be CANCELED, COMPLET
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to documentation or resources associated with the batch update oper
        #
        #   @param requested_at [Time] The date and time when the batch update operation was requested.

        # The current status of the batch update operation, which can be CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        #
        # @see HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          CANCELED = :CANCELED
          COMPLETE = :COMPLETE
          PENDING = :PENDING
          PROCESSING = :PROCESSING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
