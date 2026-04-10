# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInputUpsert < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObjectBatchInputUpsert] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
      end
    end
  end
end
