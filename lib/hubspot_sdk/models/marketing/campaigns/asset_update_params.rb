# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Assets#update
        class AssetUpdateParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute asset_type
          #
          #   @return [String]
          required :asset_type, String

          # @!attribute asset_id
          #
          #   @return [String]
          required :asset_id, String

          # @!method initialize(campaign_guid:, asset_type:, asset_id:, request_options: {})
          #   @param campaign_guid [String]
          #   @param asset_type [String]
          #   @param asset_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
