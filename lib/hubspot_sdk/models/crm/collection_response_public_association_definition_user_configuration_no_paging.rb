# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
      end
    end
  end
end
