# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiPost < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :from, -> { HubSpotSDK::PublicObjectID }

        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :to, -> { HubSpotSDK::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubSpotSDK::Models::AssociationSpec>]
        required :types, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AssociationSpec] }

        # @!method initialize(from:, to:, types:)
        #   @param from [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param types [Array<HubSpotSDK::Models::AssociationSpec>]
      end
    end
  end
end
