# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_oembed_domains
      class OEmbedDomainsCollectionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::IntegratorOEmbedDomainModel>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::IntegratorOEmbedDomainModel] }

        # @!attribute total_count
        #
        #   @return [Integer, nil]
        optional :total_count, Integer, api_name: :totalCount

        # @!method initialize(results:, total_count: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::IntegratorOEmbedDomainModel>]
        #   @param total_count [Integer]
      end
    end
  end
end
