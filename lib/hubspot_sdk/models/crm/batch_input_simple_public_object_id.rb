# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObjectID] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
      end
    end
  end
end
