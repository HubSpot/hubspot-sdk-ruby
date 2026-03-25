# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationDefinitionConfigurationCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest>]
      end
    end
  end
end
