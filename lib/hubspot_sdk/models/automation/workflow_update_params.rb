# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#update
      class WorkflowUpdateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute api_flow_put_request
        #
        #   @return [HubspotSDK::Models::Automation::APIContactFlowPutRequest, HubspotSDK::Models::Automation::APIPlatformFlowPutRequest]
        required :api_flow_put_request, union: -> { HubspotSDK::Automation::APIFlowPutRequest }

        # @!method initialize(api_flow_put_request:, request_options: {})
        #   @param api_flow_put_request [HubspotSDK::Models::Automation::APIContactFlowPutRequest, HubspotSDK::Models::Automation::APIPlatformFlowPutRequest]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
