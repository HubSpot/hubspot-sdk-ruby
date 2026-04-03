# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchResponsePageWithErrors < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Time of batch operation completion.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   Results of batch operation.
        #
        #   @return [Array<HubspotSDK::Models::Cms::CmsPage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::CmsPage] }

        # @!attribute started_at
        #   Time of batch operation start.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Status of batch operation.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::BatchResponsePageWithErrors::Status]
        required :status, enum: -> { HubspotSDK::Cms::BatchResponsePageWithErrors::Status }

        # @!attribute errors
        #   Errors in batch operation.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   Links associated with batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   Number of errors.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   Time of batch operation request.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   @param completed_at [Time] Time of batch operation completion.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::CmsPage>] Results of batch operation.
        #
        #   @param started_at [Time] Time of batch operation start.
        #
        #   @param status [Symbol, HubspotSDK::Models::Cms::BatchResponsePageWithErrors::Status] Status of batch operation.
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] Errors in batch operation.
        #
        #   @param links [Hash{Symbol=>String}] Links associated with batch operation.
        #
        #   @param num_errors [Integer] Number of errors.
        #
        #   @param requested_at [Time] Time of batch operation request.

        # Status of batch operation.
        #
        # @see HubspotSDK::Models::Cms::BatchResponsePageWithErrors#status
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
