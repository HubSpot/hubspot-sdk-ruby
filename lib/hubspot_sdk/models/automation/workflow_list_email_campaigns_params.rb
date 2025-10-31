# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#list_email_campaigns
      class WorkflowListEmailCampaignsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute flow_id
        #
        #   @return [Array<String>, nil]
        optional :flow_id, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, before: nil, flow_id: nil, limit: nil, request_options: {})
        #   @param after [String]
        #   @param before [String]
        #   @param flow_id [Array<String>]
        #   @param limit [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
