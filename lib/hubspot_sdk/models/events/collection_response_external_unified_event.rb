# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class CollectionResponseExternalUnifiedEvent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Events::ExternalUnifiedEvent>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ExternalUnifiedEvent] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Events::ExternalUnifiedEvent>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
