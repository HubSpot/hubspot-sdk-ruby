# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
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

        # @!method initialize(from:, to:)
        #   @param from [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
        #
        #   @param to [HubspotSDK::Models::PublicObjectID] Contains the Id of a Public Object
      end
    end
  end
end
