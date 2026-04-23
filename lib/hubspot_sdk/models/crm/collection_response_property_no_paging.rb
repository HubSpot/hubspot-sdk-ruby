# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Properties#list
      class CollectionResponsePropertyNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::BaseProperty>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::BaseProperty>]
      end
    end
  end
end
