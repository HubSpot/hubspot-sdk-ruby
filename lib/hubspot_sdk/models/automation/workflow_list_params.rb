# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#list
      class WorkflowListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, limit: nil, request_options: {})
        #   @param after [String]
        #   @param limit [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
