# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicFetchAssociationsBatchRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicFetchAssociationsBatchRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::CRM::PublicFetchAssociationsBatchRequest>]
      end
    end
  end
end
