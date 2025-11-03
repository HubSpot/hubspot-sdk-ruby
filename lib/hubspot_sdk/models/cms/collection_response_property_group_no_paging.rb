# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponsePropertyGroupNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PropertyGroup>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PropertyGroup] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PropertyGroup>]
      end
    end
  end
end
