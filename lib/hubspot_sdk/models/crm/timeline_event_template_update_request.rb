# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class TimelineEventTemplateUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The template ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The template name.
        #
        #   @return [String]
        required :name, String

        # @!attribute tokens
        #   A collection of tokens that can be used as custom properties on the event and to
        #   create fully fledged CRM objects.
        #
        #   @return [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>]
        required :tokens, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplateToken] }

        # @!attribute detail_template
        #   This uses Markdown syntax with Handlebars and event-specific data to render HTML
        #   on a timeline when you expand the details.
        #
        #   @return [String, nil]
        optional :detail_template, String, api_name: :detailTemplate

        # @!attribute header_template
        #   This uses Markdown syntax with Handlebars and event-specific data to render HTML
        #   on a timeline as a header.
        #
        #   @return [String, nil]
        optional :header_template, String, api_name: :headerTemplate

        # @!method initialize(id:, name:, tokens:, detail_template: nil, header_template: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::TimelineEventTemplateUpdateRequest} for more details.
        #
        #   State of the template definition being updated.
        #
        #   @param id [String] The template ID.
        #
        #   @param name [String] The template name.
        #
        #   @param tokens [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>] A collection of tokens that can be used as custom properties on the event and to
        #
        #   @param detail_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
        #
        #   @param header_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
      end
    end
  end
end
