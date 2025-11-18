# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationCreateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>]
          end
        end
      end
    end
  end
end
