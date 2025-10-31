# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicWhatsAppTemplateMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute crm_object_ids
        #
        #   @return [Hash{Symbol=>Integer}]
        required :crm_object_ids, HubspotSDK::Internal::Type::HashOf[Integer], api_name: :crmObjectIds

        # @!attribute mapped_template_id
        #
        #   @return [String]
        required :mapped_template_id, String, api_name: :mappedTemplateId

        # @!attribute parameters
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::Type }

        # @!method initialize(crm_object_ids:, mapped_template_id:, parameters:, type:)
        #   @param crm_object_ids [Hash{Symbol=>Integer}]
        #   @param mapped_template_id [String]
        #   @param parameters [Hash{Symbol=>String}]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata::Type]

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
