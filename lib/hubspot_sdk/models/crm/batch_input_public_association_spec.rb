# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationSpec < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationSpec>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationSpec] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationSpec>]
      end
    end
  end
end
