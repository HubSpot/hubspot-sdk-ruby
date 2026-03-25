# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Assets#update
        class AssetUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
