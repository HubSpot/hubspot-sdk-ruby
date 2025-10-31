# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::PropertyValidations#get
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRule>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicPropertyValidationRule] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRule>]
      end
    end
  end
end
