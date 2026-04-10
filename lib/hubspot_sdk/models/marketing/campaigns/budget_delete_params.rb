# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Budget#delete
        class BudgetDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute budget_id
          #
          #   @return [Integer]
          required :budget_id, Integer

          # @!method initialize(campaign_guid:, budget_id:, request_options: {})
          #   @param campaign_guid [String]
          #   @param budget_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
