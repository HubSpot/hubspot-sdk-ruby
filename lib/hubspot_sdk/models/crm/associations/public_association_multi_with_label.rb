# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class PublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [HubspotSDK::Models::PublicObjectID]
          required :from, -> { HubspotSDK::PublicObjectID }

          # @!attribute to
          #
          #   @return [Array<HubspotSDK::Models::CRM::MultiAssociatedObjectWithLabel>]
          required :to, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::MultiAssociatedObjectWithLabel] }

          # @!attribute paging
          #   Contains information pagination of results.
          #
          #   @return [HubspotSDK::Models::Marketing::Paging, nil]
          optional :paging, -> { HubspotSDK::Marketing::Paging }

          # @!method initialize(from:, to:, paging: nil)
          #   @param from [HubspotSDK::Models::PublicObjectID]
          #
          #   @param to [Array<HubspotSDK::Models::CRM::MultiAssociatedObjectWithLabel>]
          #
          #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
        end
      end
    end
  end
end
