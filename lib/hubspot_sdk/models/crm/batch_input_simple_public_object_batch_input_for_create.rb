# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInputForCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObjectBatchInputForCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
      end
    end
  end
end
