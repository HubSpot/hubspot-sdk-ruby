# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::PartnerClients#get
        class PartnerClientGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute associations
          #
          #   @return [Array<String>, nil]
          optional :associations, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute id_property
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!attribute properties
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute properties_with_history
          #
          #   @return [Array<String>, nil]
          optional :properties_with_history, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #   @param archived [Boolean]
          #   @param associations [Array<String>]
          #   @param id_property [String]
          #   @param properties [Array<String>]
          #   @param properties_with_history [Array<String>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
