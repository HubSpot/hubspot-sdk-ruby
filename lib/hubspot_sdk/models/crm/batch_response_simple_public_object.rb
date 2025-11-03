# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponseSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the batch processing was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject] }

        # @!attribute started_at
        #   The timestamp when the batch processing began, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch processing request: "PENDING", "PROCESSING",
        #   "CANCELLED", or "COMPLETE"
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponseSimplePublicObject::Status]
        required :status, enum: -> { HubspotSDK::Crm::BatchResponseSimplePublicObject::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   An object containing relevant links related to the batch request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the batch request was initially made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::BatchResponseSimplePublicObject} for more details.
        #
        #   A public object batch response object
        #
        #   @param completed_at [Time] The timestamp when the batch processing was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param started_at [Time] The timestamp when the batch processing began, in ISO 8601 format.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponseSimplePublicObject::Status] The status of the batch processing request: "PENDING", "PROCESSING", "CANCELLED"
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] An object containing relevant links related to the batch request.
        #
        #   @param num_errors [Integer]
        #
        #   @param requested_at [Time] The timestamp when the batch request was initially made, in ISO 8601 format.

        # The status of the batch processing request: "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE"
        #
        # @see HubspotSDK::Models::Crm::BatchResponseSimplePublicObject#status
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
