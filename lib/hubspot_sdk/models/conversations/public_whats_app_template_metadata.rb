# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicWhatsAppTemplateMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute crm_object_ids
        #
        #   @return [Hash{Symbol=>Integer}]
        required :crm_object_ids, HubspotSDK::Internal::Type::HashOf[Integer], api_name: :crmObjectIds

        # @!attribute parameters
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type }

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
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]
        #   @param content_id [Integer]
        #   @param mapped_template_id [Integer]
        #   @param root_mic_id [Integer]

        # @see HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WHATSAPP_TEMPLATE_METADATA = :WHATSAPP_TEMPLATE_METADATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
