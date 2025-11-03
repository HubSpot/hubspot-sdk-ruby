# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicFetchAssociationsBatchRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicFetchAssociationsBatchRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicFetchAssociationsBatchRequest>]
      end
    end
  end
end
