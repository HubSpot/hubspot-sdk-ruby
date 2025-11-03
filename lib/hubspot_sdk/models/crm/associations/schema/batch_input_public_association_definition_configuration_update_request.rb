# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            # @!attribute inputs
            #
            #   @return [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>]
            required :inputs,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest] }

            # @!method initialize(inputs:)
            #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>]
          end
        end
      end
    end
  end
end
