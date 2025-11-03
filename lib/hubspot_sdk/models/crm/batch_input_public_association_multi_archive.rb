# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicAssociationMultiArchive>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationMultiArchive] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationMultiArchive>]
      end
    end
  end
end
