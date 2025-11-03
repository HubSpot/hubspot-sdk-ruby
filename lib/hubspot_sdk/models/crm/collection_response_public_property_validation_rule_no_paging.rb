# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertyValidations#get
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRule] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>]
      end
    end
  end
end
