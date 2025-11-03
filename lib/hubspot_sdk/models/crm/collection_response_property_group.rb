# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePropertyGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PropertyGroup>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PropertyGroup] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::PropertyGroup>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
