# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class CollectionResponseExternalUnifiedEvent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of ExternalUnifiedEvent objects, each representing an individual event
        #   with its associated details.
        #
        #   @return [Array<HubspotSDK::Models::Events::ExternalUnifiedEvent>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ExternalUnifiedEvent] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::CollectionResponseExternalUnifiedEvent} for more
        #   details.
        #
        #   @param results [Array<HubspotSDK::Models::Events::ExternalUnifiedEvent>] An array of ExternalUnifiedEvent objects, each representing an individual event
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end

    CollectionResponseExternalUnifiedEvent = Events::CollectionResponseExternalUnifiedEvent
  end
end
