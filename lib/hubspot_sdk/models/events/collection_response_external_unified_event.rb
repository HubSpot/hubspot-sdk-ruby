# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class CollectionResponseExternalUnifiedEvent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of ExternalUnifiedEvent objects, each representing an individual event
        #   with its associated details.
        #
        #   @return [Array<HubSpotSDK::Models::Events::ExternalUnifiedEvent>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::ExternalUnifiedEvent] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::CollectionResponseExternalUnifiedEvent} for more
        #   details.
        #
        #   @param results [Array<HubSpotSDK::Models::Events::ExternalUnifiedEvent>] An array of ExternalUnifiedEvent objects, each representing an individual event
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end

    CollectionResponseExternalUnifiedEvent = Events::CollectionResponseExternalUnifiedEvent
  end
end
