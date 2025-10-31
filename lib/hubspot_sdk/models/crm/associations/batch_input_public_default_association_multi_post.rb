# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicDefaultAssociationMultiPost>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicDefaultAssociationMultiPost] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::PublicDefaultAssociationMultiPost>]
        end
      end
    end
  end
end
