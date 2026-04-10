# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicFetchAssociationsBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicFetchAssociationsBatchRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicFetchAssociationsBatchRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicFetchAssociationsBatchRequest>]
      end
    end
  end
end
