# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicAssociationMultiArchive>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociationMultiArchive] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociationMultiArchive>]
      end
    end
  end
end
