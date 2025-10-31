# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiPost>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicAssociationMultiPost] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiPost>]
        end
      end
    end
  end
end
