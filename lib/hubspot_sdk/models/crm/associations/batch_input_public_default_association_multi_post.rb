# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::Crm::Associations::PublicDefaultAssociationMultiPost>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::PublicDefaultAssociationMultiPost] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicDefaultAssociationMultiPost>]
        end
      end
    end
  end
end
