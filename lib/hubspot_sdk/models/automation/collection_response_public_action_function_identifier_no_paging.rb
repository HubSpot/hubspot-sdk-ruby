# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionFunctionIdentifierNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicActionFunctionIdentifier>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Automation::PublicActionFunctionIdentifier>]
      end
    end
  end
end
