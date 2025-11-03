# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::Crm::Associations::PublicFetchAssociationsBatchRequest>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::PublicFetchAssociationsBatchRequest] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicFetchAssociationsBatchRequest>]
        end
      end
    end
  end
end
