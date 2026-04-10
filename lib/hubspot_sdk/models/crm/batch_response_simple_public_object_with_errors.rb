# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseSimplePublicObjectWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObject>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject] }

        # @!attribute started_at
        #   The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch processing request - "PENDING", "PROCESSING",
        #   "CANCELLED", or "COMPLETE"
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponseSimplePublicObjectWithErrors::Status]
        required :status, enum: -> { HubSpotSDK::Crm::BatchResponseSimplePublicObjectWithErrors::Status }

        # @!attribute errors
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   An object containing relevant links related to the batch request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the batch process.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the batch process was initiated, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponseSimplePublicObjectWithErrors} for more
        #   details.
        #
        #   Represents the result of a batch operation on CRM objects, including the
        #   processing status, batch results, timestamps, and a list of any errors
        #   encountered during the operation.
        #
        #   @param completed_at [Time] The timestamp when the batch process was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param started_at [Time] The timestamp when the batch process began execution, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponseSimplePublicObjectWithErrors::Status] The status of the batch processing request - "PENDING", "PROCESSING", "CANCELLED
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] An object containing relevant links related to the batch request.
        #
        #   @param num_errors [Integer] The number of errors encountered during the batch process.
        #
        #   @param requested_at [Time] The timestamp when the batch process was initiated, in ISO 8601 format.

        # The status of the batch processing request - "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE"
        #
        # @see HubSpotSDK::Models::Crm::BatchResponseSimplePublicObjectWithErrors#status
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
