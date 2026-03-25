# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :from, -> { HubspotSDK::PublicObjectID }

        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :to, -> { HubspotSDK::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubspotSDK::Models::AssociationSpec>]
        required :types, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] }

        # @!method initialize(from:, to:, types:)
        #   @param from [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param types [Array<HubspotSDK::Models::AssociationSpec>]
      end
    end
  end
end
