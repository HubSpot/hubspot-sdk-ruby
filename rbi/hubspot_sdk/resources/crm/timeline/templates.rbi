# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Timeline
        class Templates
          # Event templates define the general structure for a custom timeline event, and
          # enable you to send event data to HubSpot. A template includes formatted copy for
          # its heading and details, as well as any custom property definitions. A single
          # app can include up to 750 event templates.<br/><Warning>the `v1` and `v3`
          # timeline events APIs are only available for app partners with existing `v1`/`v3`
          # timeline events defined in their public app. <ul><li>If your app doesn't include
          # any timeline events yet, requests to this endpoint will fail. Instead, you can
          # get started on
          # [latest version of the developer platform](/apps/developer-platform/build-apps/overview).
          # Note that you'll need to request approval before you can define app events for
          # your app. Learn more in the
          # [app events overview](/apps/developer-platform/add-features/app-events/overview).</li><li>If
          # your app includes a `v1`/`v3` timeline event, learn how to
          # [migrate it to the developer platform](/apps/developer-platform/add-features/app-events/create-and-manage-event-types#migrate-an-existing-timeline-event-type).
          # You don't need to request approval before migrating existing event
          # types.</li></ul>If you're not an app partner, you can send custom event data to
          # HubSpot using the
          # [custom events API](/api-reference/events-manage-event-definitions-v3/guide).</Warning>
          sig do
            params(
              app_id: Integer,
              name: String,
              object_type: String,
              tokens:
                T::Array[HubspotSDK::CRM::TimelineEventTemplateToken::OrHash],
              detail_template: String,
              header_template: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::TimelineEventTemplate)
          end
          def create(
            # The ID of the target app.
            app_id,
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
            header_template: nil,
            request_options: {}
          )
          end

          # Update an existing event template, specified by ID.
          sig do
            params(
              event_template_id: String,
              app_id: Integer,
              id: String,
              name: String,
              tokens:
                T::Array[HubspotSDK::CRM::TimelineEventTemplateToken::OrHash],
              detail_template: String,
              header_template: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::TimelineEventTemplate)
          end
          def update(
            # Path param: The event template ID.
            event_template_id,
            # Path param: The ID of the target app.
            app_id:,
            # Body param: The template ID.
            id:,
            # Body param: The template name.
            name:,
            # Body param: A collection of tokens that can be used as custom properties on the
            # event and to create fully fledged CRM objects.
            tokens:,
            # Body param: This uses Markdown syntax with Handlebars and event-specific data to
            # render HTML on a timeline when you expand the details.
            detail_template: nil,
            # Body param: This uses Markdown syntax with Handlebars and event-specific data to
            # render HTML on a timeline as a header.
            header_template: nil,
            request_options: {}
          )
          end

          # Retrieve all templates defined for an app.
          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CRM::CollectionResponseTimelineEventTemplateNoPaging
            )
          end
          def list(
            # The ID of the target app.
            app_id,
            request_options: {}
          )
          end

          # Delete an event type template by ID.
          sig do
            params(
              event_template_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The event template ID.
            event_template_id,
            # The ID of the target app.
            app_id:,
            request_options: {}
          )
          end

          # Retrieve an event type template by ID.
          sig do
            params(
              event_template_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::TimelineEventTemplate)
          end
          def get(
            # The event template ID.
            event_template_id,
            # The ID of the target app.
            app_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
