# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowEmailCampaign < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email_campaign_id
        #
        #   @return [String]
        required :email_campaign_id, String, api_name: :emailCampaignId

        # @!attribute email_content_id
        #
        #   @return [String]
        required :email_content_id, String, api_name: :emailContentId

        # @!attribute flow_id
        #
        #   @return [String]
        required :flow_id, String, api_name: :flowId

        # @!method initialize(email_campaign_id:, email_content_id:, flow_id:)
        #   @param email_campaign_id [String]
        #   @param email_content_id [String]
        #   @param flow_id [String]
      end
    end
  end
end
