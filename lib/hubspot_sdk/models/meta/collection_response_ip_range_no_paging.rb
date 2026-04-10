# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Meta
      class CollectionResponseIPRangeNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of IpRange objects, each representing a specific IP range with
        #   associated details such as CIDR, direction, service, and description.
        #
        #   @return [Array<HubSpotSDK::Models::Meta::IPRange>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Meta::IPRange] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Meta::CollectionResponseIPRangeNoPaging} for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Meta::IPRange>] An array of IpRange objects, each representing a specific IP range with associat
      end
    end
  end
end
