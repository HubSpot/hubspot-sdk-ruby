# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseProperty < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp indicating when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::Property>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Property] }

        # @!attribute started_at
        #   The timestamp indicating when the batch operation began processing.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values being CANCELED,
        #   COMPLETE, PENDING, or PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponseProperty::Status]
        required :status, enum: -> { HubSpotSDK::Crm::BatchResponseProperty::Status }

        # @!attribute links
        #   A collection of URLs linking to documentation or resources related to the batch
        #   operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp indicating when the batch operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponseProperty} for more details.
        #
        #   @param completed_at [Time] The timestamp indicating when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::Property>]
        #
        #   @param started_at [Time] The timestamp indicating when the batch operation began processing.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponseProperty::Status] The current status of the batch operation, with possible values being CANCELED,
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to documentation or resources related to the batch
        #
        #   @param requested_at [Time] The timestamp indicating when the batch operation was requested.

        # The current status of the batch operation, with possible values being CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        #
        # @see HubSpotSDK::Models::Crm::BatchResponseProperty#status
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
