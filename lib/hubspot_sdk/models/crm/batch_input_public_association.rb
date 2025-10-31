# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicAssociation>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociation] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociation>]
      end
    end
  end
end
