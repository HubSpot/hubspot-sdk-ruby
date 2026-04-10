# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicWhatsAppTemplateMetadata < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute crm_object_ids
        #
        #   @return [Hash{Symbol=>Integer}]
        required :crm_object_ids, HubSpotSDK::Internal::Type::HashOf[Integer], api_name: :crmObjectIds

        # @!attribute parameters
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type }

        # @!attribute content_id
        #
        #   @return [Integer, nil]
        optional :content_id, Integer, api_name: :contentId

        # @!attribute mapped_template_id
        #
        #   @return [Integer, nil]
        optional :mapped_template_id, Integer, api_name: :mappedTemplateId

        # @!attribute root_mic_id
        #
        #   @return [Integer, nil]
        optional :root_mic_id, Integer, api_name: :rootMicId

        # @!method initialize(crm_object_ids:, parameters:, type:, content_id: nil, mapped_template_id: nil, root_mic_id: nil)
        #   @param crm_object_ids [Hash{Symbol=>Integer}]
        #   @param parameters [Hash{Symbol=>String}]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]
        #   @param content_id [Integer]
        #   @param mapped_template_id [Integer]
        #   @param root_mic_id [Integer]

        # @see HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          WHATSAPP_TEMPLATE_METADATA = :WHATSAPP_TEMPLATE_METADATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
