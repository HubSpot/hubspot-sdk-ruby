# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::ActionCreateParams} for more details.
        #
        # Create a new custom workflow action.
        #
        # @overload create(app_id, action_url:, functions:, input_fields:, labels:, object_types:, published:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil, request_options: {})
        #
        # @param app_id [Integer]
        #
        # @param action_url [String] The URL endpoint where the action is executed.
        #
        # @param functions [Array<HubspotSDK::Models::Automation::PublicActionFunction>]
        #
        # @param input_fields [Array<HubspotSDK::Models::Automation::PublicInputFieldDefinition>]
        #
        # @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}] Holds various labels associated with the action, including names and description
        #
        # @param object_types [Array<String>]
        #
        # @param published [Boolean] Indicates whether the action is published and available for use.
        #
        # @param archived_at [Integer] The timestamp indicating when the action was archived.
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
        # @see HubspotSDK::Models::Automation::ActionCreateParams
        def create(app_id, params)
          parsed, options = HubspotSDK::Automation::ActionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["automation/actions/2026-03/%1$s", app_id],
            body: parsed,
            model: HubspotSDK::Automation::PublicActionDefinition,
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
        # @param execution_rules [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>] Body param
        #
        # @param input_field_dependencies [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>] Body param
        #
        # @param input_fields [Array<HubspotSDK::Models::Automation::PublicInputFieldDefinition>] Body param
        #
        # @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}] Body param: Contains labels for the action, including names and descriptions.
        #
        # @param object_request_options [HubspotSDK::Models::Automation::PublicObjectRequestOptions] Body param
        #
        # @param object_types [Array<String>] Body param
        #
        # @param output_fields [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>] Body param
        #
        # @param published [Boolean] Body param: Indicates whether the action is published and available for use.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionDefinition]
        #
        # @see HubspotSDK::Models::Automation::ActionUpdateParams
        def update(definition_id, params)
          parsed, options = HubspotSDK::Automation::ActionUpdateParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["automation/actions/2026-03/%1$s/%2$s", app_id, definition_id],
            body: parsed,
            model: HubspotSDK::Automation::PublicActionDefinition,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::ActionListParams} for more details.
        #
        # Retrieve the versions of a definition by ID.
        #
        # @overload list(definition_id, app_id:, after: nil, limit: nil, request_options: {})
        #
        # @param definition_id [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param after [String] Query param: The paging cursor token of the last successfully read resource will
        #
        # @param limit [Integer] Query param: The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Automation::PublicActionRevision>]
        #
        # @see HubspotSDK::Models::Automation::ActionListParams
        def list(definition_id, params)
          parsed, options = HubspotSDK::Automation::ActionListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["automation/actions/2026-03/%1$s/%2$s/revisions", app_id, definition_id],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Automation::PublicActionRevision,
            options: options
          )
        end

        # Archive a function for a specific definition.
        #
        # @overload delete(function_id, app_id:, definition_id:, function_type:, request_options: {})
        #
        # @param function_id [String]
        # @param app_id [Integer]
        # @param definition_id [String]
        # @param function_type [Symbol, HubspotSDK::Models::Automation::ActionDeleteParams::FunctionType]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::ActionDeleteParams
        def delete(function_id, params)
          parsed, options = HubspotSDK::Automation::ActionDeleteParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          function_type =
            parsed.delete(:function_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "automation/actions/2026-03/%1$s/%2$s/functions/%3$s/%4$s",
              app_id,
              definition_id,
              function_type,
              function_id
            ],
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::ActionCompleteParams} for more details.
        #
        # Complete a specific blocked action execution by ID.
        #
        # @overload complete(callback_id, output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil, request_options: {})
        #
        # @param callback_id [String]
        #
        # @param output_fields [Hash{Symbol=>String}] Contains the output fields associated with the callback, with each field represe
        #
        # @param typed_outputs [Object] Holds the typed outputs related to the callback, structured as an object.
        #
        # @param failure_reason_type [String] Indicates the reason for the failure of a callback completion.
        #
        # @param request_context [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext] Specifies the context in which the request is made, which can be one of several
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::ActionCompleteParams
        def complete(callback_id, params)
          parsed, options = HubspotSDK::Automation::ActionCompleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["automation/actions/callbacks/2026-03/%1$s/complete", callback_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Complete a batch of blocked action executions.
        #
        # @overload complete_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Automation::CallbackCompletionBatchRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::ActionCompleteBatchParams
        def complete_batch(params)
          parsed, options = HubspotSDK::Automation::ActionCompleteBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "automation/actions/callbacks/2026-03/complete",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Update a function for a given definition by ID.
        #
        # @overload create_or_replace(function_id, app_id:, definition_id:, function_type:, body:, request_options: {})
        #
        # @param function_id [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param definition_id [String] Path param
        #
        # @param function_type [Symbol, HubspotSDK::Models::Automation::ActionCreateOrReplaceParams::FunctionType] Path param
        #
        # @param body [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionFunctionIdentifier]
        #
        # @see HubspotSDK::Models::Automation::ActionCreateOrReplaceParams
        def create_or_replace(function_id, params)
          parsed, options = HubspotSDK::Automation::ActionCreateOrReplaceParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          function_type =
            parsed.delete(:function_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "automation/actions/2026-03/%1$s/%2$s/functions/%3$s/%4$s",
              app_id,
              definition_id,
              function_type,
              function_id
            ],
            headers: {"content-type" => "text/plain"},
            body: parsed[:body],
            model: HubspotSDK::Automation::PublicActionFunctionIdentifier,
            options: options
          )
        end

        # Add a function for a given definition.
        #
        # @overload create_or_replace_by_function_type(function_type, app_id:, definition_id:, body:, request_options: {})
        #
        # @param function_type [Symbol, HubspotSDK::Models::Automation::ActionCreateOrReplaceByFunctionTypeParams::FunctionType] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param definition_id [String] Path param
        #
        # @param body [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionFunctionIdentifier]
        #
        # @see HubspotSDK::Models::Automation::ActionCreateOrReplaceByFunctionTypeParams
        def create_or_replace_by_function_type(function_type, params)
          parsed, options = HubspotSDK::Automation::ActionCreateOrReplaceByFunctionTypeParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "automation/actions/2026-03/%1$s/%2$s/functions/%3$s",
              app_id,
              definition_id,
              function_type
            ],
            headers: {"content-type" => "text/plain"},
            body: parsed[:body],
            model: HubspotSDK::Automation::PublicActionFunctionIdentifier,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::ActionCreateRequiresObjectParams} for more
        # details.
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::ActionCreateRequiresObjectParams
        def create_requires_object(definition_id, params)
          parsed, options = HubspotSDK::Automation::ActionCreateRequiresObjectParams.dump_request(params)
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

        # Delete a function within a given definition.
        #
        # @overload delete_by_function_type(function_type, app_id:, definition_id:, request_options: {})
        #
        # @param function_type [Symbol, HubspotSDK::Models::Automation::ActionDeleteByFunctionTypeParams::FunctionType]
        # @param app_id [Integer]
        # @param definition_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::ActionDeleteByFunctionTypeParams
        def delete_by_function_type(function_type, params)
          parsed, options = HubspotSDK::Automation::ActionDeleteByFunctionTypeParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "automation/actions/2026-03/%1$s/%2$s/functions/%3$s",
              app_id,
              definition_id,
              function_type
            ],
            model: NilClass,
            options: options
          )
        end

        # Retrieve a specific revision of a definition by revision ID.
        #
        # @overload get(revision_id, app_id:, definition_id:, request_options: {})
        #
        # @param revision_id [String]
        # @param app_id [Integer]
        # @param definition_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionRevision]
        #
        # @see HubspotSDK::Models::Automation::ActionGetParams
        def get(revision_id, params)
          parsed, options = HubspotSDK::Automation::ActionGetParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["automation/actions/2026-03/%1$s/%2$s/revisions/%3$s", app_id, definition_id, revision_id],
            model: HubspotSDK::Automation::PublicActionRevision,
            options: options
          )
        end

        # Retrieve functions of a specific type for a given definition.
        #
        # @overload get_by_function_type(function_type, app_id:, definition_id:, request_options: {})
        #
        # @param function_type [Symbol, HubspotSDK::Models::Automation::ActionGetByFunctionTypeParams::FunctionType]
        # @param app_id [Integer]
        # @param definition_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionFunction]
        #
        # @see HubspotSDK::Models::Automation::ActionGetByFunctionTypeParams
        def get_by_function_type(function_type, params)
          parsed, options = HubspotSDK::Automation::ActionGetByFunctionTypeParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          definition_id =
            parsed.delete(:definition_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "automation/actions/2026-03/%1$s/%2$s/functions/%3$s",
              app_id,
              definition_id,
              function_type
            ],
            model: HubspotSDK::Automation::PublicActionFunction,
            options: options
          )
        end

        # Retrieve whether a custom action definition requires an object.
        #
        # @overload get_requires_object(definition_id, app_id:, request_options: {})
        #
        # @param definition_id [String]
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicActionDefinitionRequiresObjectResponse]
        #
        # @see HubspotSDK::Models::Automation::ActionGetRequiresObjectParams
        def get_requires_object(definition_id, params)
          parsed, options = HubspotSDK::Automation::ActionGetRequiresObjectParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["automation/actions/2026-03/%1$s/%2$s/requires-object", app_id, definition_id],
            model: HubspotSDK::Automation::PublicActionDefinitionRequiresObjectResponse,
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
