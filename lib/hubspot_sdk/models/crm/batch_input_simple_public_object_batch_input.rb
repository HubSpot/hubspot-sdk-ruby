# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObjectBatchInput] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
      end
    end
  end
end
