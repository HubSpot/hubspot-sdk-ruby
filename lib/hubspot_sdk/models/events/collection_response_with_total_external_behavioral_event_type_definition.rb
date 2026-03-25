# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class CollectionResponseWithTotalExternalBehavioralEventTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ExternalBehavioralEventTypeDefinition] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
