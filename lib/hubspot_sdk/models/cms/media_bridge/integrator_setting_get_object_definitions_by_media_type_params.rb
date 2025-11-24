# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#get_object_definitions_by_media_type
        class IntegratorSettingGetObjectDefinitionsByMediaTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute include_full_definition
          #   Include the full definition in the response.
          #
          #   @return [Boolean, nil]
          optional :include_full_definition, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(app_id:, include_full_definition: nil, request_options: {})
          #   @param app_id [Integer]
          #
          #   @param include_full_definition [Boolean] Include the full definition in the response.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module MediaType
            extend HubspotSDK::Internal::Type::Enum

            AUDIO = :AUDIO
            DOCUMENT = :DOCUMENT
            IMAGE = :IMAGE
            OTHER = :OTHER
            VIDEO = :VIDEO

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
