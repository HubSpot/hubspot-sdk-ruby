# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#batch_get_id_mappings
      class BatchResponseFlowIDWorkflowIDMappingResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Automation::FlowIDWorkflowIDMappingResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::FlowIDWorkflowIDMappingResponse] }

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::BatchResponseFlowIDWorkflowIDMappingResponse::Status]
        required :status,
                 enum: -> { HubspotSDK::Automation::BatchResponseFlowIDWorkflowIDMappingResponse::Status }

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
        #   @param results [Array<HubspotSDK::Models::Automation::FlowIDWorkflowIDMappingResponse>]
        #   @param started_at [Time]
        #   @param status [Symbol, HubspotSDK::Models::Automation::BatchResponseFlowIDWorkflowIDMappingResponse::Status]
        #   @param links [Hash{Symbol=>String}]
        #   @param requested_at [Time]

        # @see HubspotSDK::Models::Automation::BatchResponseFlowIDWorkflowIDMappingResponse#status
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
