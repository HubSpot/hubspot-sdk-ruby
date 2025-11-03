# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationMultiArchive>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::PublicAssociationMultiArchive] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationMultiArchive>]
        end
      end
    end
  end
end
