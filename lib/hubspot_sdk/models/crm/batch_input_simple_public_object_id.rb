# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectID] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
      end
    end
  end
end
