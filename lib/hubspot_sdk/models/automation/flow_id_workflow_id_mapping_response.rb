# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class FlowIDWorkflowIDMappingResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_id
        #
        #   @return [Integer]
        required :flow_id, Integer, api_name: :flowId

        # @!attribute workflow_id
        #
        #   @return [Integer]
        required :workflow_id, Integer, api_name: :workflowId

        # @!method initialize(flow_id:, workflow_id:)
        #   @param flow_id [Integer]
        #   @param workflow_id [Integer]
      end
    end
  end
end
