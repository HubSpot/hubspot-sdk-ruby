# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationSpec>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationSpec] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationSpec>]
      end
    end
  end
end
