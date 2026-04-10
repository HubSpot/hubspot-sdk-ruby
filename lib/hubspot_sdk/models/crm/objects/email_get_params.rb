# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Emails#get
        class EmailGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute email_id
          #
          #   @return [String]
          required :email_id, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute associations
          #   A comma separated list of object types to retrieve associated IDs for. If any of
          #   the specified associations do not exist, they will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :associations, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!attribute properties
          #   A comma separated list of the properties to be returned in the response. If any
          #   of the specified properties are not present on the requested object(s), they
          #   will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute properties_with_history
          #   A comma separated list of the properties to be returned along with their history
          #   of previous values. If any of the specified properties are not present on the
          #   requested object(s), they will be ignored.
          #
          #   @return [Array<String>, nil]
          optional :properties_with_history, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(email_id:, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Objects::EmailGetParams} for more details.
          #
          #   @param email_id [String]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          #   @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
