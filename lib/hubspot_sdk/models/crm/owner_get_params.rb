# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Owners#get
      class OwnerGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute id_property
        #   Specifies whether to use 'id' or 'userId' as the identifier for the owner.
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::OwnerGetParams::IDProperty, nil]
        optional :id_property, enum: -> { HubspotSDK::CRM::OwnerGetParams::IDProperty }

        # @!method initialize(archived: nil, id_property: nil, request_options: {})
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param id_property [Symbol, HubspotSDK::Models::CRM::OwnerGetParams::IDProperty] Specifies whether to use 'id' or 'userId' as the identifier for the owner.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # Specifies whether to use 'id' or 'userId' as the identifier for the owner.
        module IDProperty
          extend HubspotSDK::Internal::Type::Enum

          ID = :id
          USER_ID = :userId

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
