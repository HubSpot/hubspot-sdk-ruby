# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be CANCELED, COMPLETE,
        #   PENDING, or PROCESSING.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status]
        required :status,
                 enum: -> { HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A collection of URLs linking to related documentation or resources associated
        #   with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The total number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status] The current status of the batch operation, which can be CANCELED, COMPLETE, PEND
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to related documentation or resources associated wi
        #
        #   @param num_errors [Integer] The total number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested.

        # The current status of the batch operation, which can be CANCELED, COMPLETE,
        # PENDING, or PROCESSING.
        #
        # @see HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

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
