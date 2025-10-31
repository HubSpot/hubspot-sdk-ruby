# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObjectID] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>]
      end
    end
  end
end
