# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class OEmbedDomainsCollectionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::IntegratorOEmbedDomainModel] }

        # @!attribute total_count
        #
        #   @return [Integer, nil]
        optional :total_count, Integer, api_name: :totalCount

        # @!method initialize(results:, total_count: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel>]
        #   @param total_count [Integer]
      end
    end
  end
end
