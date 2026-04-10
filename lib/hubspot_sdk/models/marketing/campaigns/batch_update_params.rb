# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Batch#update
        class BatchUpdateParams < HubSpotSDK::Models::Marketing::BatchInputPublicCampaignBatchUpdateItem
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
