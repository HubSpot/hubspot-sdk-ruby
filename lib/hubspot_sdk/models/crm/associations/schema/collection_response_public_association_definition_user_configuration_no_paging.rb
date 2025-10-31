# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubspotSDK::Internal::Type::BaseModel
            # @!attribute results
            #
            #   @return [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
            required :results,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration] }

            # @!method initialize(results:)
            #   @param results [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration>]
          end
        end
      end
    end
  end
end
