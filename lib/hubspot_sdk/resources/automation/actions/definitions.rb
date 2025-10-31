# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Definitions
          # Create a new custom workflow action.
          #
          # @overload create(app_id, action_url:, functions:, input_fields:, labels:, object_types:, published:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil, request_options: {})
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param action_url [String]
          #
          # @param functions [Array<HubspotSDK::Models::Automation::PublicActionFunction>]
          #
          # @param input_fields [Array<HubspotSDK::Models::Automation::InputFieldDefinition>]
          #
          # @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}]
          #
          # @param object_types [Array<String>]
          #
          # @param published [Boolean]
          #
          # @param archived_at [Integer]
          #
          # @param execution_rules [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>]
          #
          # @param input_field_dependencies [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
          #
          # @param object_request_options [HubspotSDK::Models::Automation::PublicObjectRequestOptions]
          #
          # @param output_fields [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubspotSDK::Models::Automation::Actions::DefinitionCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::Automation::Actions::DefinitionCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["automation/v4/actions/%1$s", app_id],
              body: parsed,
              model: HubspotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Update an existing action definition by ID.
          #
          # @overload update(definition_id, app_id:, action_url: nil, execution_rules: nil, input_field_dependencies: nil, input_fields: nil, labels: nil, object_request_options: nil, object_types: nil, output_fields: nil, published: nil, request_options: {})
          #
          # @param definition_id [String] Path param: The ID of the custom action definition.
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param action_url [String] Body param:
          #
          # @param execution_rules [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>] Body param:
          #
          # @param input_field_dependencies [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>] Body param:
          #
          # @param input_fields [Array<HubspotSDK::Models::Automation::InputFieldDefinition>] Body param:
          #
          # @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}] Body param:
          #
          # @param object_request_options [HubspotSDK::Models::Automation::PublicObjectRequestOptions] Body param:
          #
          # @param object_types [Array<String>] Body param:
          #
          # @param output_fields [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>] Body param:
          #
          # @param published [Boolean] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubspotSDK::Models::Automation::Actions::DefinitionUpdateParams
          def update(definition_id, params)
            parsed, options = HubspotSDK::Automation::Actions::DefinitionUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["automation/v4/actions/%1$s/%2$s", app_id, definition_id],
              body: parsed,
              model: HubspotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::DefinitionListParams} for more
          # details.
          #
          # Retrieve custom workflow action definitions by app ID.
          #
          # @overload list(app_id, after: nil, archived: nil, limit: nil, request_options: {})
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Automation::PublicActionDefinition>]
          #
          # @see HubspotSDK::Models::Automation::Actions::DefinitionListParams
          def list(app_id, params = {})
            parsed, options = HubspotSDK::Automation::Actions::DefinitionListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["automation/v4/actions/%1$s", app_id],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Delete an action definition by ID.
          #
          # @overload delete(definition_id, app_id:, request_options: {})
          #
          # @param definition_id [String] The ID of the custom action definition.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Automation::Actions::DefinitionDeleteParams
          def delete(definition_id, params)
            parsed, options = HubspotSDK::Automation::Actions::DefinitionDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["automation/v4/actions/%1$s/%2$s", app_id, definition_id],
              model: NilClass,
              options: options
            )
          end

          # Retrieve a custom workflow action definition by ID.
          #
          # @overload get(definition_id, app_id:, archived: nil, request_options: {})
          #
          # @param definition_id [String] Path param: The ID of the custom action.
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubspotSDK::Models::Automation::Actions::DefinitionGetParams
          def get(definition_id, params)
            parsed, options = HubspotSDK::Automation::Actions::DefinitionGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/v4/actions/%1$s/%2$s", app_id, definition_id],
              query: parsed,
              model: HubspotSDK::Automation::PublicActionDefinition,
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
