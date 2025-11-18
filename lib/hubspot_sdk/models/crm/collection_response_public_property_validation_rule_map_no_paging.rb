# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertyValidations#list
      class CollectionResponsePublicPropertyValidationRuleMapNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of properties with their validation rules. Each item maps a property
        #   name to its configured validation rules for the specified object type.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRuleMap>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRuleMap] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRuleMap>] Collection of properties with their validation rules. Each item maps a property
      end
    end
  end
end
