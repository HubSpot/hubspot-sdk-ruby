# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Spend#update
        class SpendUpdateParams < HubSpotSDK::Models::Marketing::PublicSpendItemInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute spend_id
          #
          #   @return [Integer]
          required :spend_id, Integer

          # @!method initialize(campaign_guid:, spend_id:, request_options: {})
          #   @param campaign_guid [String]
          #   @param spend_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
