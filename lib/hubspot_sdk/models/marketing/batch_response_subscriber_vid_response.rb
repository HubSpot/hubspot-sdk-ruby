# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchResponseSubscriberVidResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Timestamp that represents when the request finished processing
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::SubscriberVidResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriberVidResponse] }

        # @!attribute started_at
        #   Timestamp that represents when the request started processing
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the request processing
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::BatchResponseSubscriberVidResponse::Status]
        required :status, enum: -> { HubspotSDK::Marketing::BatchResponseSubscriberVidResponse::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   Result of the request
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the processing
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   Timestamp that represents when the request was made
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   @param completed_at [Time] Timestamp that represents when the request finished processing
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::SubscriberVidResponse>]
        #
        #   @param started_at [Time] Timestamp that represents when the request started processing
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::BatchResponseSubscriberVidResponse::Status] The status of the request processing
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] Result of the request
        #
        #   @param num_errors [Integer] The number of errors that occurred during the processing
        #
        #   @param requested_at [Time] Timestamp that represents when the request was made

        # The status of the request processing
        #
        # @see HubspotSDK::Models::Marketing::BatchResponseSubscriberVidResponse#status
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
