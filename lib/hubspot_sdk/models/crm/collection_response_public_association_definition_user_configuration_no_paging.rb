# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration>]
      end
    end
  end
end
