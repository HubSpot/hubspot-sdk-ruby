# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionFunctionIdentifierNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicActionFunctionIdentifier>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Automation::PublicActionFunctionIdentifier>]
      end
    end
  end
end
