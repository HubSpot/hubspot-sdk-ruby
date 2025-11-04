# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
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
          #   @return [Array<HubspotSDK::Models::AssociationSpec>]
          required :types, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] }

          # @!method initialize(from:, to:, types:)
          #   @param from [HubspotSDK::Models::PublicObjectID]
          #   @param to [HubspotSDK::Models::PublicObjectID]
          #   @param types [Array<HubspotSDK::Models::AssociationSpec>]
        end
      end
    end
  end
end
