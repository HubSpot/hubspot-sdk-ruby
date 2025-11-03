# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectBatchInput] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
      end
    end
  end
end
