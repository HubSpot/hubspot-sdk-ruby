# frozen_string_literal: true

module HubspotSDK
  module Models
    module Meta
      class CollectionResponseIPRangeNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of IpRange objects, each representing a specific IP range with
        #   associated details such as CIDR, direction, service, and description.
        #
        #   @return [Array<HubspotSDK::Models::Meta::IPRange>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Meta::IPRange] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Meta::CollectionResponseIPRangeNoPaging} for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Meta::IPRange>] An array of IpRange objects, each representing a specific IP range with associat
      end
    end
  end
end
