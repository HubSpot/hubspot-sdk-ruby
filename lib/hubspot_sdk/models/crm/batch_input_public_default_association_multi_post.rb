# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicDefaultAssociationMultiPost>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicDefaultAssociationMultiPost] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicDefaultAssociationMultiPost>]
      end
    end
  end
end
