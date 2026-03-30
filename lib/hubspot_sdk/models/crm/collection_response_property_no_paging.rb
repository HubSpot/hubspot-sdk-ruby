# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Properties#list
      class CollectionResponsePropertyNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Property>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Property>]
      end
    end
  end
end
