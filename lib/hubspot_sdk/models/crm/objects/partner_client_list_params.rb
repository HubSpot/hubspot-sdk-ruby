# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::PartnerClients#list
        class PartnerClientListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute associations
          #
          #   @return [Array<String>, nil]
          optional :associations, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute properties
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute properties_with_history
          #
          #   @return [Array<String>, nil]
          optional :properties_with_history, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #   @param after [String]
          #   @param archived [Boolean]
          #   @param associations [Array<String>]
          #   @param limit [Integer]
          #   @param properties [Array<String>]
          #   @param properties_with_history [Array<String>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
