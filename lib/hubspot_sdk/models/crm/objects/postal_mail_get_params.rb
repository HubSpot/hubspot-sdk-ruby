# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::PostalMail#get
        class PostalMailGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute associations
          #   A comma separated list of object types to retrieve associated IDs for. If any of
          #   the specified associations do not exist, they will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :associations, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute id_property
          #   The name of a property whose values are unique for this object
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!attribute properties
          #   A comma separated list of the properties to be returned in the response. If any
          #   of the specified properties are not present on the requested object(s), they
          #   will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute properties_with_history
          #   A comma separated list of the properties to be returned along with their history
          #   of previous values. If any of the specified properties are not present on the
          #   requested object(s), they will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :properties_with_history, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Objects::PostalMailGetParams} for more details.
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          #   @param id_property [String] The name of a property whose values are unique for this object
          #
          #   @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          #   @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
