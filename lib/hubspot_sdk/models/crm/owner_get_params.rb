# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Owners#get
      class OwnerGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute owner_id
        #
        #   @return [Integer]
        required :owner_id, Integer

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute id_property
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::OwnerGetParams::IDProperty, nil]
        optional :id_property, enum: -> { HubSpotSDK::Crm::OwnerGetParams::IDProperty }

        # @!method initialize(owner_id:, archived: nil, id_property: nil, request_options: {})
        #   @param owner_id [Integer]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param id_property [Symbol, HubSpotSDK::Models::Crm::OwnerGetParams::IDProperty]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module IDProperty
          extend HubSpotSDK::Internal::Type::Enum

          ID = :id
          USER_ID = :userId

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
