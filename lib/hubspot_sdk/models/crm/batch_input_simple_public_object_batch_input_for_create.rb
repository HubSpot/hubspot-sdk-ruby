# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputForCreate>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObjectBatchInputForCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputForCreate>]
      end
    end
  end
end
