# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiArchive < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute from
        #   Contains the Id of a Public Object
        #
        #   @return [HubSpotSDK::Models::PublicObjectID]
        required :from, -> { HubSpotSDK::PublicObjectID }

        # @!attribute to
        #
        #   @return [Array<HubSpotSDK::Models::PublicObjectID>]
        required :to, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PublicObjectID] }

        # @!method initialize(from:, to:)
        #   @param from [HubSpotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [Array<HubSpotSDK::Models::PublicObjectID>]
      end
    end
  end
end
