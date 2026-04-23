# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchResponseProperty < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::MediaBridgeProperty>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::MediaBridgeProperty] }

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::BatchResponseProperty::Status]
        required :status, enum: -> { HubSpotSDK::Cms::BatchResponseProperty::Status }

        # @!attribute links
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   @param completed_at [Time]
        #   @param results [Array<HubSpotSDK::Models::Cms::MediaBridgeProperty>]
        #   @param started_at [Time]
        #   @param status [Symbol, HubSpotSDK::Models::Cms::BatchResponseProperty::Status]
        #   @param links [Hash{Symbol=>String}]
        #   @param requested_at [Time]

        # @see HubSpotSDK::Models::Cms::BatchResponseProperty#status
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
