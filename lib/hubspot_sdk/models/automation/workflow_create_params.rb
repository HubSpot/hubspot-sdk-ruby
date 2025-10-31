# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#create
      class WorkflowCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute api_flow_create_request
        #
        #   @return [HubspotSDK::Models::Automation::APIContactFlowCreateRequest, HubspotSDK::Models::Automation::APIPlatformFlowCreateRequest]
        required :api_flow_create_request, union: -> { HubspotSDK::Automation::APIFlowCreateRequest }

        # @!method initialize(api_flow_create_request:, request_options: {})
        #   @param api_flow_create_request [HubspotSDK::Models::Automation::APIContactFlowCreateRequest, HubspotSDK::Models::Automation::APIPlatformFlowCreateRequest]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
