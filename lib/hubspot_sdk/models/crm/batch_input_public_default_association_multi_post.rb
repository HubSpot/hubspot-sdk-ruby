# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicDefaultAssociationMultiPost>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicDefaultAssociationMultiPost] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::PublicDefaultAssociationMultiPost>]
      end
    end
  end
end
