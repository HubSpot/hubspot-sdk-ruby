# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :from, -> { HubspotSDK::PublicObjectID }

          # @!attribute to
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :to, -> { HubspotSDK::PublicObjectID }

          # @!method initialize(from:, to:)
          #   @param from [HubspotSDK::Models::PublicObjectID]
          #   @param to [HubspotSDK::Models::PublicObjectID]
        end
      end
    end
  end
end
