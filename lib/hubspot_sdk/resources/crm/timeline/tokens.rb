# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Tokens
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Timeline::TokenCreateParams} for more details.
          #
          # Update an existing event type template with new tokens.
          #
          # @overload create(event_template_id, app_id:, label:, name:, type:, created_at: nil, object_property_name: nil, options: nil, updated_at: nil, request_options: {})
          #
          # @param event_template_id [String] Path param: The event template ID.
          #
          # @param app_id [Integer] Path param: The ID of the target app.
          #
          # @param label [String] Body param: Used for list segmentation and reporting.
          #
          # @param name [String] Body param: The name of the token referenced in the templates. This must be uniq
          #
          # @param type [Symbol, HubspotSDK::Models::Crm::TimelineEventTemplateToken::Type] Body param: The data type of the token. You can currently choose from [string, n
          #
          # @param created_at [Time] Body param: The date and time that the Event Template Token was created, as an I
          #
          # @param object_property_name [String] Body param: The name of the CRM object property. This will populate the CRM obje
          #
          # @param options [Array<HubspotSDK::Models::Crm::TimelineEventTemplateTokenOption>] Body param: If type is `enumeration`, we should have a list of options to choose
          #
          # @param updated_at [Time] Body param: The date and time that the Event Template Token was last updated, as
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::TimelineEventTemplateToken]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TokenCreateParams
          def create(event_template_id, params)
            parsed, options = HubspotSDK::Crm::Timeline::TokenCreateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["integrators/timeline/v3/%1$s/event-templates/%2$s/tokens", app_id, event_template_id],
              body: parsed,
              model: HubspotSDK::Crm::TimelineEventTemplateToken,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Timeline::TokenUpdateParams} for more details.
          #
          # Update an event type template token, specified by token name.
          #
          # @overload update(token_name, app_id:, event_template_id:, label:, object_property_name: nil, options: nil, request_options: {})
          #
          # @param token_name [String] Path param: The token name.
          #
          # @param app_id [Integer] Path param: The ID of the target app.
          #
          # @param event_template_id [String] Path param: The event template ID.
          #
          # @param label [String] Body param: Used for list segmentation and reporting.
          #
          # @param object_property_name [String] Body param: The name of the CRM object property. This will populate the CRM obje
          #
          # @param options [Array<HubspotSDK::Models::Crm::TimelineEventTemplateTokenOption>] Body param: If type is `enumeration`, we should have a list of options to choose
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::TimelineEventTemplateToken]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TokenUpdateParams
          def update(token_name, params)
            parsed, options = HubspotSDK::Crm::Timeline::TokenUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            event_template_id =
              parsed.delete(:event_template_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "integrators/timeline/v3/%1$s/event-templates/%2$s/tokens/%3$s",
                app_id,
                event_template_id,
                token_name
              ],
              body: parsed,
              model: HubspotSDK::Crm::TimelineEventTemplateToken,
              options: options
            )
          end

          # Delete an existing token from a specific event type template.
          #
          # @overload delete(token_name, app_id:, event_template_id:, request_options: {})
          #
          # @param token_name [String] The token name.
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Timeline::TokenDeleteParams
          def delete(token_name, params)
            parsed, options = HubspotSDK::Crm::Timeline::TokenDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            event_template_id =
              parsed.delete(:event_template_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "integrators/timeline/v3/%1$s/event-templates/%2$s/tokens/%3$s",
                app_id,
                event_template_id,
                token_name
              ],
              model: NilClass,
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
