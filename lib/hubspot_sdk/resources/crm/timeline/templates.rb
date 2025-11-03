# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Templates
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Timeline::TemplateCreateParams} for more details.
          #
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
          #
          # @overload create(app_id, name:, object_type:, tokens:, detail_template: nil, header_template: nil, request_options: {})
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param name [String] The template name.
          #
          # @param object_type [String] The type of CRM object this template is for. [Contacts, companies, tickets, and
          #
          # @param tokens [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>] A collection of tokens that can be used as custom properties on the event and to
          #
          # @param detail_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
          #
          # @param header_template [String] This uses Markdown syntax with Handlebars and event-specific data to render HTML
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::TimelineEventTemplate]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TemplateCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::Crm::Timeline::TemplateCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["integrators/timeline/v3/%1$s/event-templates", app_id],
              body: parsed,
              model: HubspotSDK::Crm::TimelineEventTemplate,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Timeline::TemplateUpdateParams} for more details.
          #
          # Update an existing event template, specified by ID.
          #
          # @overload update(event_template_id, app_id:, id:, name:, tokens:, detail_template: nil, header_template: nil, request_options: {})
          #
          # @param event_template_id [String] Path param: The event template ID.
          #
          # @param app_id [Integer] Path param: The ID of the target app.
          #
          # @param id [String] Body param: The template ID.
          #
          # @param name [String] Body param: The template name.
          #
          # @param tokens [Array<HubspotSDK::Models::Crm::TimelineEventTemplateToken>] Body param: A collection of tokens that can be used as custom properties on the
          #
          # @param detail_template [String] Body param: This uses Markdown syntax with Handlebars and event-specific data to
          #
          # @param header_template [String] Body param: This uses Markdown syntax with Handlebars and event-specific data to
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::TimelineEventTemplate]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TemplateUpdateParams
          def update(event_template_id, params)
            parsed, options = HubspotSDK::Crm::Timeline::TemplateUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["integrators/timeline/v3/%1$s/event-templates/%2$s", app_id, event_template_id],
              body: parsed,
              model: HubspotSDK::Crm::TimelineEventTemplate,
              options: options
            )
          end

          # Retrieve all templates defined for an app.
          #
          # @overload list(app_id, request_options: {})
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseTimelineEventTemplateNoPaging]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TemplateListParams
          def list(app_id, params = {})
            @client.request(
              method: :get,
              path: ["integrators/timeline/v3/%1$s/event-templates", app_id],
              model: HubspotSDK::Crm::CollectionResponseTimelineEventTemplateNoPaging,
              options: params[:request_options]
            )
          end

          # Delete an event type template by ID.
          #
          # @overload delete(event_template_id, app_id:, request_options: {})
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TemplateDeleteParams
          def delete(event_template_id, params)
            parsed, options = HubspotSDK::Crm::Timeline::TemplateDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["integrators/timeline/v3/%1$s/event-templates/%2$s", app_id, event_template_id],
              model: NilClass,
              options: options
            )
          end

          # Retrieve an event type template by ID.
          #
          # @overload get(event_template_id, app_id:, request_options: {})
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::TimelineEventTemplate]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TemplateGetParams
          def get(event_template_id, params)
            parsed, options = HubspotSDK::Crm::Timeline::TemplateGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["integrators/timeline/v3/%1$s/event-templates/%2$s", app_id, event_template_id],
              model: HubspotSDK::Crm::TimelineEventTemplate,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
