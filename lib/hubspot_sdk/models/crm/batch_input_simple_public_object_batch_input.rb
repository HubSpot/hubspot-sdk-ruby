# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInput>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObjectBatchInput] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInput>]
      end
    end
  end
end
