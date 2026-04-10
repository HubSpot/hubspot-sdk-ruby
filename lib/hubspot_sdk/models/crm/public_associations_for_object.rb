# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationsForObject < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :to, -> { HubSpotSDK::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubSpotSDK::Models::AssociationSpec>]
        required :types, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AssociationSpec] }

        # @!method initialize(to:, types:)
        #   @param to [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param types [Array<HubSpotSDK::Models::AssociationSpec>]
      end
    end
  end
end
