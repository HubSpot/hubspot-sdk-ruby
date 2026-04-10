# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        class Definitions
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Automation::Actions::DefinitionCreateParams} for more
          # details.
          #
          # Create a new custom workflow action.
          #
          # @overload create(app_id, action_url:, functions:, input_fields:, labels:, object_types:, published:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param action_url [String] The URL endpoint where the action is executed.
          #
          # @param functions [Array<HubSpotSDK::Models::Automation::PublicActionFunction>]
          #
          # @param input_fields [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
          #
          # @param labels [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}] Holds various labels associated with the action, including names and description
          #
          # @param object_types [Array<String>]
          #
          # @param published [Boolean] Indicates whether the action is published and available for use.
          #
          # @param archived_at [Integer] The timestamp indicating when the action was archived.
          #
          # @param execution_rules [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>]
          #
          # @param input_field_dependencies [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
          #
          # @param object_request_options [HubSpotSDK::Models::Automation::PublicObjectRequestOptions]
          #
          # @param output_fields [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionCreateParams
          def create(app_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["automation/actions/2026-03/%1$s", app_id],
              body: parsed,
              model: HubSpotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Update an existing action definition by ID.
          #
          # @overload update(definition_id, app_id:, action_url: nil, execution_rules: nil, input_field_dependencies: nil, input_fields: nil, labels: nil, object_request_options: nil, object_types: nil, output_fields: nil, published: nil, request_options: {})
          #
          # @param definition_id [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param action_url [String] Body param: The URL endpoint where the action is executed.
          #
          # @param execution_rules [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>] Body param
          #
          # @param input_field_dependencies [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>] Body param
          #
          # @param input_fields [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>] Body param
          #
          # @param labels [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}] Body param: Contains labels for the action, including names and descriptions.
          #
          # @param object_request_options [HubSpotSDK::Models::Automation::PublicObjectRequestOptions] Body param
          #
          # @param object_types [Array<String>] Body param
          #
          # @param output_fields [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>] Body param
          #
          # @param published [Boolean] Body param: Indicates whether the action is published and available for use.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionUpdateParams
          def update(definition_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["automation/actions/2026-03/%1$s/%2$s", app_id, definition_id],
              body: parsed,
              model: HubSpotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Automation::Actions::DefinitionListParams} for more
          # details.
          #
          # Retrieve custom workflow action definitions by app ID.
          #
          # @overload list(app_id, after: nil, archived: nil, limit: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Automation::PublicActionDefinition>]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionListParams
          def list(app_id, params = {})
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["automation/actions/2026-03/%1$s", app_id],
              query: query,
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Delete an action definition by ID.
          #
          # @overload delete(definition_id, app_id:, request_options: {})
          #
          # @param definition_id [String]
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionDeleteParams
          def delete(definition_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["automation/actions/2026-03/%1$s/%2$s", app_id, definition_id],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Automation::Actions::DefinitionCreateRequiresObjectParams}
          # for more details.
          #
          # Set whether a custom action definition requires an object.
          #
          # @overload create_requires_object(definition_id, app_id:, requires_object:, request_options: {})
          #
          # @param definition_id [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param requires_object [Boolean] Body param: Indicates whether a custom action definition requires an associated
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionCreateRequiresObjectParams
          def create_requires_object(definition_id, params)
            parsed, options =
              HubSpotSDK::Automation::Actions::DefinitionCreateRequiresObjectParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["automation/actions/2026-03/%1$s/%2$s/requires-object", app_id, definition_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve a custom workflow action definition by ID.
          #
          # @overload get(definition_id, app_id:, archived: nil, request_options: {})
          #
          # @param definition_id [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Automation::PublicActionDefinition]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionGetParams
          def get(definition_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/actions/2026-03/%1$s/%2$s", app_id, definition_id],
              query: query,
              model: HubSpotSDK::Automation::PublicActionDefinition,
              options: options
            )
          end

          # Retrieve whether a custom action definition requires an object.
          #
          # @overload get_requires_object(definition_id, app_id:, request_options: {})
          #
          # @param definition_id [String]
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Automation::PublicActionDefinitionRequiresObjectResponse]
          #
          # @see HubSpotSDK::Models::Automation::Actions::DefinitionGetRequiresObjectParams
          def get_requires_object(definition_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::DefinitionGetRequiresObjectParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/actions/2026-03/%1$s/%2$s/requires-object", app_id, definition_id],
              model: HubSpotSDK::Automation::PublicActionDefinitionRequiresObjectResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
