# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Exports#get_status
      class ActionResponseWithSingleResultUri < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp when the export was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute started_at
        #   The timestamp when the export process started, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        #   CANCELED.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::ActionResponseWithSingleResultUri::Status]
        required :status, enum: -> { HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A collection of related links associated with the export.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the export process.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp when the export request was made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute result
        #   The URL of the resulting file if the export status is COMPLETE.
        #
        #   @return [String, nil]
        optional :result, String

        # @!method initialize(completed_at:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil, result: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ActionResponseWithSingleResultUri} for more details.
        #
        #   @param completed_at [Time] The timestamp when the export was completed, in ISO 8601 format.
        #
        #   @param started_at [Time] The timestamp when the export process started, in ISO 8601 format.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::ActionResponseWithSingleResultUri::Status] The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the export.
        #
        #   @param num_errors [Integer] The number of errors encountered during the export process.
        #
        #   @param requested_at [Time] The timestamp when the export request was made, in ISO 8601 format.
        #
        #   @param result [String] The URL of the resulting file if the export status is COMPLETE.

        # The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        # CANCELED.
        #
        # @see HubspotSDK::Models::Crm::ActionResponseWithSingleResultUri#status
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
