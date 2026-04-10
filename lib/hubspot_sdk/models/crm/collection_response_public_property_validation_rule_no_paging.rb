# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_and_property_name
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of validation rules configured for the specified property. Each rule
        #   defines a constraint that property values must satisfy (e.g., format
        #   requirements, length limits, allowed values).
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicPropertyValidationRule>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicPropertyValidationRule] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicPropertyValidationRule>] Collection of validation rules configured for the specified property. Each rule
      end
    end
  end
end
