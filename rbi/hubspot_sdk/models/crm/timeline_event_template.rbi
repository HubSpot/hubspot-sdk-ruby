# typed: strong

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::TimelineEventTemplate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The template ID.
        sig { returns(String) }
        attr_accessor :id

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

        # The date and time that the Event Template was created, as an ISO 8601 timestamp.
        # Will be null if the template was created before Feb 18th, 2020.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

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

        # The date and time that the Event Template was last updated, as an ISO 8601
        # timestamp. Will be null if the template was created before Feb 18th, 2020.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The current state of the template definition.
        sig do
          params(
            id: String,
            name: String,
            object_type: String,
            tokens:
              T::Array[HubspotSDK::CRM::TimelineEventTemplateToken::OrHash],
            created_at: Time,
            detail_template: String,
            header_template: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The template ID.
          id:,
          # The template name.
          name:,
          # The type of CRM object this template is for. [Contacts, companies, tickets, and
          # deals] are supported.
          object_type:,
          # A collection of tokens that can be used as custom properties on the event and to
          # create fully fledged CRM objects.
          tokens:,
          # The date and time that the Event Template was created, as an ISO 8601 timestamp.
          # Will be null if the template was created before Feb 18th, 2020.
          created_at: nil,
          # This uses Markdown syntax with Handlebars and event-specific data to render HTML
          # on a timeline when you expand the details.
          detail_template: nil,
          # This uses Markdown syntax with Handlebars and event-specific data to render HTML
          # on a timeline as a header.
          header_template: nil,
          # The date and time that the Event Template was last updated, as an ISO 8601
          # timestamp. Will be null if the template was created before Feb 18th, 2020.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              object_type: String,
              tokens: T::Array[HubspotSDK::CRM::TimelineEventTemplateToken],
              created_at: Time,
              detail_template: String,
              header_template: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
