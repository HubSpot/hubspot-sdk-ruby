# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchFlowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_id
        #
        #   @return [String]
        required :flow_id, String, api_name: :flowId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type }

        # @!method initialize(flow_id:, type:)
        #   @param flow_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate::Type]

        # @see HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FLOW_ID = :FLOW_ID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
