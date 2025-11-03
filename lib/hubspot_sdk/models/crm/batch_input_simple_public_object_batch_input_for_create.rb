# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectBatchInputForCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
      end
    end
  end
end
