# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociation>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociation] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociation>]
      end
    end
  end
end
