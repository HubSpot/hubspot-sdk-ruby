# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationMultiPost>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationMultiPost] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationMultiPost>]
      end
    end
  end
end
