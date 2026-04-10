# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationDefinitionConfigurationUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest>]
      end
    end
  end
end
