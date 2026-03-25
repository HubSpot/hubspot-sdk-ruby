# frozen_string_literal: true

module HubspotSDK
  module Models
    class CollectionResponsePropertyGroupNoPaging < HubspotSDK::Internal::Type::BaseModel
      # @!attribute results
      #
      #   @return [Array<HubspotSDK::Models::PropertyGroup>]
      required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyGroup] }

      # @!method initialize(results:)
      #   @param results [Array<HubspotSDK::Models::PropertyGroup>]
    end
  end
end
