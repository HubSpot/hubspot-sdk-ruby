# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalAssociationCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute to
        #   Contains the Id of a Public Object
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :to, -> { HubspotSDK::PublicObjectID }

        # @!attribute types
        #
        #   @return [Array<HubspotSDK::Models::AssociationSpec>]
        required :types, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] }

        # @!method initialize(to:, types:)
        #   @param to [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param types [Array<HubspotSDK::Models::AssociationSpec>]
      end
    end
  end
end
