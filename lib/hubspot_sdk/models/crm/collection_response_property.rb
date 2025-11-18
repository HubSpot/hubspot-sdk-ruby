# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Properties#list
      class CollectionResponseProperty < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Property>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Property>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
