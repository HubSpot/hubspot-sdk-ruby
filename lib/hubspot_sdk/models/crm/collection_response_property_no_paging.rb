# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Properties#list
      class CollectionResponsePropertyNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::Property>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Property] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::Property>]
      end
    end
  end
end
