# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationDefinitionUserConfiguration < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be CANCELED, COMPLETE,
        #   PENDING, or PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status]
        required :status,
                 enum: -> { HubSpotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status }

        # @!attribute links
        #   A collection of URLs linking to related documentation or resources associated
        #   with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status] The current status of the batch operation, which can be CANCELED, COMPLETE, PEND
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to related documentation or resources associated wi
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested.

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        #
        # @see HubSpotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration#status
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
