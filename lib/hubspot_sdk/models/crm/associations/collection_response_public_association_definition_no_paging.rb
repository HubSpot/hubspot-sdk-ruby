# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        # @see HubspotSDK::Resources::CRM::Associations::Schema#list
        class CollectionResponsePublicAssociationDefinitionNoPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationDefinition>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicAssociationDefinition] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationDefinition>]
        end
      end
    end
  end
end
