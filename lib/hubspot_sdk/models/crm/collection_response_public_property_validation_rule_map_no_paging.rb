# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id
      class CollectionResponsePublicPropertyValidationRuleMapNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of properties with their validation rules. Each item maps a property
        #   name to its configured validation rules for the specified object type.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicPropertyValidationRuleMap>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicPropertyValidationRuleMap] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicPropertyValidationRuleMap>] Collection of properties with their validation rules. Each item maps a property
      end
    end
  end
end
