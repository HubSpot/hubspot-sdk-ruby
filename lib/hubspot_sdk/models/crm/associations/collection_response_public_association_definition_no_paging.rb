# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        # @see HubspotSDK::Resources::Crm::Associations::Schema#list
        class CollectionResponsePublicAssociationDefinitionNoPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationDefinition>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::PublicAssociationDefinition] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationDefinition>]
        end
      end
    end
  end
end
