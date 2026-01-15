# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Functions
          # Retrieve all functions included in a definition.
          #
          # @overload list(definition_id, app_id:, request_options: {})
          #
          # @param definition_id [String] The ID of the definition.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionListParams
          def list(definition_id, params)
            parsed, options = HubspotSDK::Automation::Actions::FunctionListParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/v4/actions/%1$s/%2$s/functions", app_id, definition_id],
              model: HubspotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging,
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
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionDeleteParams::FunctionType]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionDeleteParams
          def delete(function_id, params)
            parsed, options = HubspotSDK::Automation::Actions::FunctionDeleteParams.dump_request(params)
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
                "automation/v4/actions/%1$s/%2$s/functions/%3$s/%4$s",
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
          # {HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceParams} for
          # more details.
          #
          # Update a function for a given definition by ID.
          #
          # @overload create_or_replace(function_id, app_id:, definition_id:, function_type:, body:, request_options: {})
          #
          # @param function_id [String] Path param: The ID of the function.
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param definition_id [String] Path param: The ID of the definition.
          #
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType] Path param: The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTI
          #
          # @param body [String] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionFunctionIdentifier]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceParams
          def create_or_replace(function_id, params)
            parsed, options = HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams.dump_request(params)
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
                "automation/v4/actions/%1$s/%2$s/functions/%3$s/%4$s",
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

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams}
          # for more details.
          #
          # Add a function for a given definition.
          #
          # @overload create_or_replace_by_function_type(function_type, app_id:, definition_id:, body:, request_options: {})
          #
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType] Path param: The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTI
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param definition_id [String] Path param: The ID of the definition.
          #
          # @param body [String] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionFunctionIdentifier]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams
          def create_or_replace_by_function_type(function_type, params)
            parsed, options =
              HubspotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams.dump_request(params)
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
              path: ["automation/v4/actions/%1$s/%2$s/functions/%3$s", app_id, definition_id, function_type],
              headers: {"content-type" => "text/plain"},
              body: parsed[:body],
              model: HubspotSDK::Automation::PublicActionFunctionIdentifier,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::FunctionDeleteByFunctionTypeParams}
          # for more details.
          #
          # Delete a function within a given definition.
          #
          # @overload delete_by_function_type(function_type, app_id:, definition_id:, request_options: {})
          #
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionDeleteByFunctionTypeParams::FunctionType] The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
          # `POST\_
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param definition_id [String] The ID of the definition.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionDeleteByFunctionTypeParams
          def delete_by_function_type(function_type, params)
            parsed, options =
              HubspotSDK::Automation::Actions::FunctionDeleteByFunctionTypeParams.dump_request(params)
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
              path: ["automation/v4/actions/%1$s/%2$s/functions/%3$s", app_id, definition_id, function_type],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::FunctionGetParams} for more details.
          #
          # Retrieve a specific function from a given definition.
          #
          # @overload get(function_id, app_id:, definition_id:, function_type:, request_options: {})
          #
          # @param function_id [String] The ID of the function.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param definition_id [String] The ID of the definition.
          #
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionGetParams::FunctionType] The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
          # `POST\_
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionFunction]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionGetParams
          def get(function_id, params)
            parsed, options = HubspotSDK::Automation::Actions::FunctionGetParams.dump_request(params)
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
              method: :get,
              path: [
                "automation/v4/actions/%1$s/%2$s/functions/%3$s/%4$s",
                app_id,
                definition_id,
                function_type,
                function_id
              ],
              model: HubspotSDK::Automation::PublicActionFunction,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::FunctionGetByFunctionTypeParams} for
          # more details.
          #
          # Retrieve functions of a specific type for a given definition.
          #
          # @overload get_by_function_type(function_type, app_id:, definition_id:, request_options: {})
          #
          # @param function_type [Symbol, HubspotSDK::Models::Automation::Actions::FunctionGetByFunctionTypeParams::FunctionType] The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
          # `POST\_
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param definition_id [String] The ID of the definition.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionFunction]
          #
          # @see HubspotSDK::Models::Automation::Actions::FunctionGetByFunctionTypeParams
          def get_by_function_type(function_type, params)
            parsed, options = HubspotSDK::Automation::Actions::FunctionGetByFunctionTypeParams.dump_request(params)
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
              path: ["automation/v4/actions/%1$s/%2$s/functions/%3$s", app_id, definition_id, function_type],
              model: HubspotSDK::Automation::PublicActionFunction,
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
