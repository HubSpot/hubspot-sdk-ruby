# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiArchive>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicAssociationMultiArchive] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiArchive>]
        end
      end
    end
  end
end
