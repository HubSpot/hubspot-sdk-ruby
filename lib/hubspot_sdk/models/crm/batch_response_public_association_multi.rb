# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationMulti < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationMulti>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationMulti] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: PENDING,
        #   PROCESSING, CANCELED, COMPLETE.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponsePublicAssociationMulti::Status]
        required :status, enum: -> { HubspotSDK::Crm::BatchResponsePublicAssociationMulti::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   URLs linking to resources or documentation associated with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::BatchResponsePublicAssociationMulti} for more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::PublicAssociationMulti>]
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponsePublicAssociationMulti::Status] The current status of the batch operation, with possible values: PENDING, PROCES
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to resources or documentation associated with the batch operation.
        #
        #   @param num_errors [Integer] The number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch request was made.

        # The current status of the batch operation, with possible values: PENDING,
        # PROCESSING, CANCELED, COMPLETE.
        #
        # @see HubspotSDK::Models::Crm::BatchResponsePublicAssociationMulti#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          PROCESSING = :PROCESSING
          CANCELED = :CANCELED
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
