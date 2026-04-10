# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationMultiArchive < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiArchive>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationMultiArchive] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiArchive>]
      end
    end
  end
end
