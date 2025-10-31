# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectBatchInputUpsert < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputUpsert>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObjectBatchInputUpsert] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputUpsert>]
      end
    end
  end
end
