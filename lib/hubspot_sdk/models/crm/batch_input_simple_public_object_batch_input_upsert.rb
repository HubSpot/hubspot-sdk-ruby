# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInputUpsert < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectBatchInputUpsert] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
      end
    end
  end
end
