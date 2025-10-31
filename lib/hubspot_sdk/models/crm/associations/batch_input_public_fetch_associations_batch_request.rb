# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicFetchAssociationsBatchRequest>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicFetchAssociationsBatchRequest] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::PublicFetchAssociationsBatchRequest>]
        end
      end
    end
  end
end
