# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionDefinitionForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicActionDefinition>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionDefinition] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Automation::PublicActionDefinition>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
