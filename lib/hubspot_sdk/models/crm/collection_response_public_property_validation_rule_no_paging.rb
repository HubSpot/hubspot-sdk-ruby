# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_and_property_name
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of validation rules configured for the specified property. Each rule
        #   defines a constraint that property values must satisfy (e.g., format
        #   requirements, length limits, allowed values).
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRule] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>] Collection of validation rules configured for the specified property. Each rule
      end
    end
  end
end
