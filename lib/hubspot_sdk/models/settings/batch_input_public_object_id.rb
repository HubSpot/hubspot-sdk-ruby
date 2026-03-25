# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class BatchInputPublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::PublicObjectID>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PublicObjectID] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::PublicObjectID>]
      end
    end
  end
end
