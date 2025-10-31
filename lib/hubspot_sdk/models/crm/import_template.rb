# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ImportTemplate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute template_id
        #
        #   @return [Integer]
        required :template_id, Integer, api_name: :templateId

        # @!attribute template_type
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::ImportTemplate::TemplateType]
        required :template_type,
                 enum: -> { HubspotSDK::CRM::ImportTemplate::TemplateType },
                 api_name: :templateType

        # @!method initialize(template_id:, template_type:)
        #   @param template_id [Integer]
        #   @param template_type [Symbol, HubspotSDK::Models::CRM::ImportTemplate::TemplateType]

        # @see HubspotSDK::Models::CRM::ImportTemplate#template_type
        module TemplateType
          extend HubspotSDK::Internal::Type::Enum

          ADMIN_DEFINED = :admin_defined
          PREVIOUS_IMPORT = :previous_import
          USER_FILE = :user_file

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
