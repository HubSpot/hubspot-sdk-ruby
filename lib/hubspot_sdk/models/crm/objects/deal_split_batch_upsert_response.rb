# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::DealSplits#batch_upsert
        class DealSplitBatchUpsertResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result] }

          # @!attribute started_at
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status]
          required :status, enum: -> { HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status }

          # @!attribute links
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :links, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute requested_at
          #
          #   @return [Time, nil]
          optional :requested_at, Time, api_name: :requestedAt

          # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
          #   @param completed_at [Time]
          #   @param results [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result>]
          #   @param started_at [Time]
          #   @param status [Symbol, HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status]
          #   @param links [Hash{Symbol=>String}]
          #   @param requested_at [Time]

          class Result < HubspotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute splits
            #
            #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObject>]
            required :splits, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObject] }

            # @!method initialize(id:, splits:)
            #   @param id [String]
            #   @param splits [Array<HubspotSDK::Models::CRM::SimplePublicObject>]
          end

          # @see HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse#status
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
end
