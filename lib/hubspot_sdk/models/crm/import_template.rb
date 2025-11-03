# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ImportTemplate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute template_id
        #
        #   @return [Integer]
        required :template_id, Integer, api_name: :templateId

        # @!attribute template_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::ImportTemplate::TemplateType]
        required :template_type,
                 enum: -> { HubspotSDK::Crm::ImportTemplate::TemplateType },
                 api_name: :templateType

        # @!method initialize(template_id:, template_type:)
        #   @param template_id [Integer]
        #   @param template_type [Symbol, HubspotSDK::Models::Crm::ImportTemplate::TemplateType]

        # @see HubspotSDK::Models::Crm::ImportTemplate#template_type
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
