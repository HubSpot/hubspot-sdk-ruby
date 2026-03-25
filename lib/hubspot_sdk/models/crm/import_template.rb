# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ImportTemplate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute template_id
        #   The unique identifier for the specific saved template or previous import being
        #   referenced.
        #
        #   @return [Integer]
        required :template_id, Integer, api_name: :templateId

        # @!attribute template_type
        #   The classification of what type of template this represents, and what is its
        #   origin or purpose.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::ImportTemplate::TemplateType]
        required :template_type,
                 enum: -> { HubspotSDK::Crm::ImportTemplate::TemplateType },
                 api_name: :templateType

        # @!method initialize(template_id:, template_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ImportTemplate} for more details.
        #
        #   @param template_id [Integer] The unique identifier for the specific saved template or previous import being r
        #
        #   @param template_type [Symbol, HubspotSDK::Models::Crm::ImportTemplate::TemplateType] The classification of what type of template this represents, and what is its ori

        # The classification of what type of template this represents, and what is its
        # origin or purpose.
        #
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
