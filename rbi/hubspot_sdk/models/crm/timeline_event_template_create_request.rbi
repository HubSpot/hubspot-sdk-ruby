# typed: strong

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::TimelineEventTemplateCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The template name.
        sig { returns(String) }
        attr_accessor :name

        # The type of CRM object this template is for. [Contacts, companies, tickets, and
        # deals] are supported.
        sig { returns(String) }
        attr_accessor :object_type

        # A collection of tokens that can be used as custom properties on the event and to
        # create fully fledged CRM objects.
        sig { returns(T::Array[HubspotSDK::CRM::TimelineEventTemplateToken]) }
        attr_accessor :tokens

        # This uses Markdown syntax with Handlebars and event-specific data to render HTML
        # on a timeline when you expand the details.
        sig { returns(T.nilable(String)) }
        attr_reader :detail_template

        sig { params(detail_template: String).void }
        attr_writer :detail_template

        # This uses Markdown syntax with Handlebars and event-specific data to render HTML
        # on a timeline as a header.
        sig { returns(T.nilable(String)) }
        attr_reader :header_template

        sig { params(header_template: String).void }
        attr_writer :header_template

        # State of the template definition being created.
        sig do
          params(
            name: String,
            object_type: String,
            tokens:
              T::Array[HubspotSDK::CRM::TimelineEventTemplateToken::OrHash],
            detail_template: String,
            header_template: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The template name.
          name:,
          # The type of CRM object this template is for. [Contacts, companies, tickets, and
          # deals] are supported.
          object_type:,
          # A collection of tokens that can be used as custom properties on the event and to
          # create fully fledged CRM objects.
          tokens:,
          # This uses Markdown syntax with Handlebars and event-specific data to render HTML
          # on a timeline when you expand the details.
          detail_template: nil,
          # This uses Markdown syntax with Handlebars and event-specific data to render HTML
          # on a timeline as a header.
          header_template: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              object_type: String,
              tokens: T::Array[HubspotSDK::CRM::TimelineEventTemplateToken],
              detail_template: String,
              header_template: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
