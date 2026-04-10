# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationMultiPost < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiPost>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationMultiPost] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiPost>]
      end
    end
  end
end
