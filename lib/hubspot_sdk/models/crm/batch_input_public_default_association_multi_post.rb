# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicDefaultAssociationMultiPost < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicDefaultAssociationMultiPost>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicDefaultAssociationMultiPost] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicDefaultAssociationMultiPost>]
      end
    end
  end
end
