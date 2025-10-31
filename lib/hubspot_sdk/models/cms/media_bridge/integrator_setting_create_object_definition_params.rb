# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#create_object_definition
        class IntegratorSettingCreateObjectDefinitionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute media_types
          #
          #   @return [Array<Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType>]
          required :media_types,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType]
                   },
                   api_name: :mediaTypes

          # @!method initialize(media_types:, request_options: {})
          #   @param media_types [Array<Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module MediaType
            extend HubspotSDK::Internal::Type::Enum

            VIDEO = :VIDEO
            AUDIO = :AUDIO
            DOCUMENT = :DOCUMENT
            OTHER = :OTHER
            IMAGE = :IMAGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
