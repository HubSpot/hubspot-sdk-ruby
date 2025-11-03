# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertyValidations#list
      class CollectionResponsePublicPropertyValidationRuleMapNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRuleMap>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRuleMap] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRuleMap>]
      end
    end
  end
end
