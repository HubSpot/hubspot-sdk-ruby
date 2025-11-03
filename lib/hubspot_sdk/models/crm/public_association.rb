# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute from
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :from, -> { HubspotSDK::PublicObjectID }

        # @!attribute to
        #
        #   @return [HubspotSDK::Models::PublicObjectID]
        required :to, -> { HubspotSDK::PublicObjectID }

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(from:, to:, type:)
        #   @param from [HubspotSDK::Models::PublicObjectID]
        #   @param to [HubspotSDK::Models::PublicObjectID]
        #   @param type [String]
      end
    end
  end
end
