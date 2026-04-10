# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationDefinitionConfigurationCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest>]
      end
    end
  end
end
