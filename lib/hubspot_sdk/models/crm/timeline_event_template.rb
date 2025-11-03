# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class TimelineEventTemplate < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute object_type
        #   The type of CRM object this template is for. [Contacts, companies, tickets, and
        #   deals] are supported.
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute tokens
        #   A collection of tokens that can be used as custom properties on the event and to
        #   create fully fledged CRM objects.
        #
        #   @return [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>]
        required :tokens, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventTemplateToken] }

        # @!attribute created_at
        #   The date and time that the Event Template was created, as an ISO 8601 timestamp.
        #   Will be null if the template was created before Feb 18th, 2020.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

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

        # @!attribute updated_at
        #   The date and time that the Event Template was last updated, as an ISO 8601
        #   timestamp. Will be null if the template was created before Feb 18th, 2020.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, name:, object_type:, tokens:, created_at: nil, detail_template: nil, header_template: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::TimelineEventTemplate} for more details.
        #
        #   The current state of the template definition.
        #
        #   @param id [String] The template ID.
        #
        #   @param name [String] The template name.
        #
        #   @param object_type [String] The type of CRM object this template is for. [Contacts, companies, tickets, and
        #
        #   @param tokens [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>] A collection of tokens that can be used as custom properties on the event and to
        #
        #   @param created_at [Time] The date and time that the Event Template was created, as an ISO 8601 timestamp.
        #
        #   @param detail_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
        #
        #   @param header_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
        #
        #   @param updated_at [Time] The date and time that the Event Template was last updated, as an ISO 8601 times
      end
    end
  end
end
