# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDefaultAssociationMultiPost < HubSpotSDK::Internal::Type::BaseModel
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

        # @!method initialize(from:, to:)
        #   @param from [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
      end
    end
  end
end
