# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class PublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :from, -> { HubspotSDK::PublicObjectID }

          # @!attribute to
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :to, -> { HubspotSDK::PublicObjectID }

          # @!attribute types
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::AssociationSpec1>]
          required :types,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::AssociationSpec1] }

          # @!method initialize(from:, to:, types:)
          #   @param from [HubspotSDK::Models::PublicObjectID]
          #   @param to [HubspotSDK::Models::PublicObjectID]
          #   @param types [Array<HubspotSDK::Models::CRM::Associations::AssociationSpec1>]
        end
      end
    end
  end
end
