# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::PropertyValidations#list
      class CollectionResponsePublicPropertyValidationRuleMapNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRuleMap>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicPropertyValidationRuleMap] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRuleMap>]
      end
    end
  end
end
