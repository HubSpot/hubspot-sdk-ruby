# frozen_string_literal: true

module HubSpotSDK
  module Models
    class CollectionResponsePropertyGroupNoPaging < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute results
      #
      #   @return [Array<HubSpotSDK::Models::PropertyGroup>]
      required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyGroup] }

      # @!method initialize(results:)
      #   @param results [Array<HubSpotSDK::Models::PropertyGroup>]
    end
  end
end
