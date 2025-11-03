# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :from, -> { HubspotSDK::PublicObjectID }

          # @!attribute to
          #
          #   @return [Array<HubspotSDK::Models::PublicObjectID>]
          required :to, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PublicObjectID] }

          # @!method initialize(from:, to:)
          #   @param from [HubspotSDK::Models::PublicObjectID]
          #   @param to [Array<HubspotSDK::Models::PublicObjectID>]
        end
      end
    end
  end
end
