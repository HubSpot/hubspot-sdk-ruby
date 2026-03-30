# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        # Create a new custom workflow action.
        sig do
          params(
            app_id: Integer,
            action_url: String,
            functions:
              T::Array[HubspotSDK::Automation::PublicActionFunction::OrHash],
            input_fields:
              T::Array[
                HubspotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubspotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_types: T::Array[String],
            published: T::Boolean,
            archived_at: Integer,
            execution_rules:
              T::Array[
                HubspotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ],
            input_field_dependencies:
              T::Array[
                T.any(
                  HubspotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ],
            object_request_options:
              HubspotSDK::Automation::PublicObjectRequestOptions::OrHash,
            output_fields:
              T::Array[HubspotSDK::Automation::OutputFieldDefinition::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionDefinition)
        end
        def create(
          app_id,
          # The URL endpoint where the action is executed.
          action_url:,
          functions:,
          input_fields:,
          # Holds various labels associated with the action, including names and
          # descriptions.
          labels:,
          object_types:,
          # Indicates whether the action is published and available for use.
          published:,
          # The timestamp indicating when the action was archived.
          archived_at: nil,
          execution_rules: nil,
          input_field_dependencies: nil,
          object_request_options: nil,
          output_fields: nil,
          request_options: {}
        )
        end

        # Update an existing action definition by ID.
        sig do
          params(
            definition_id: String,
            app_id: Integer,
            action_url: String,
            execution_rules:
              T::Array[
                HubspotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ],
            input_field_dependencies:
              T::Array[
                T.any(
                  HubspotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ],
            input_fields:
              T::Array[
                HubspotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubspotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_request_options:
              HubspotSDK::Automation::PublicObjectRequestOptions::OrHash,
            object_types: T::Array[String],
            output_fields:
              T::Array[HubspotSDK::Automation::OutputFieldDefinition::OrHash],
            published: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionDefinition)
        end
        def update(
          # Path param
          definition_id,
          # Path param
          app_id:,
          # Body param: The URL endpoint where the action is executed.
          action_url: nil,
          # Body param
          execution_rules: nil,
          # Body param
          input_field_dependencies: nil,
          # Body param
          input_fields: nil,
          # Body param: Contains labels for the action, including names and descriptions.
          labels: nil,
          # Body param
          object_request_options: nil,
          # Body param
          object_types: nil,
          # Body param
          output_fields: nil,
          # Body param: Indicates whether the action is published and available for use.
          published: nil,
          request_options: {}
        )
        end

        # Retrieve the versions of a definition by ID.
        sig do
          params(
            definition_id: String,
            app_id: Integer,
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Automation::PublicActionRevision
            ]
          )
        end
        def list(
          # Path param
          definition_id,
          # Path param
          app_id:,
          # Query param: The paging cursor token of the last successfully read resource will
          # be returned as the `paging.next.after` JSON property of a paged response
          # containing more results.
          after: nil,
          # Query param: The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # Archive a function for a specific definition.
        sig do
          params(
            function_id: String,
            app_id: Integer,
            definition_id: String,
            function_type:
              HubspotSDK::Automation::ActionDeleteParams::FunctionType::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          function_id,
          app_id:,
          definition_id:,
          function_type:,
          request_options: {}
        )
        end

        # Complete a specific blocked action execution by ID.
        sig do
          params(
            callback_id: String,
            output_fields: T::Hash[Symbol, String],
            typed_outputs: T.anything,
            failure_reason_type: String,
            request_context:
              T.any(
                HubspotSDK::Automation::WorkflowsRequestContext::OrHash,
                HubspotSDK::Automation::AgentRequestContext::OrHash,
                HubspotSDK::Automation::CopilotRequestContext::OrHash,
                HubspotSDK::Automation::StandaloneRequestContext::OrHash,
                HubspotSDK::Automation::TestRequestContext::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def complete(
          callback_id,
          # Contains the output fields associated with the callback, with each field
          # represented as a key-value pair.
          output_fields:,
          # Holds the typed outputs related to the callback, structured as an object.
          typed_outputs:,
          # Indicates the reason for the failure of a callback completion.
          failure_reason_type: nil,
          # Specifies the context in which the request is made, which can be one of several
          # predefined contexts.
          request_context: nil,
          request_options: {}
        )
        end

        # Complete a batch of blocked action executions.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Automation::CallbackCompletionBatchRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def complete_batch(inputs:, request_options: {})
        end

        # Update a function for a given definition by ID.
        sig do
          params(
            function_id: String,
            app_id: Integer,
            definition_id: String,
            function_type:
              HubspotSDK::Automation::ActionCreateOrReplaceParams::FunctionType::OrSymbol,
            body: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionFunctionIdentifier)
        end
        def create_or_replace(
          # Path param
          function_id,
          # Path param
          app_id:,
          # Path param
          definition_id:,
          # Path param
          function_type:,
          # Body param
          body:,
          request_options: {}
        )
        end

        # Add a function for a given definition.
        sig do
          params(
            function_type:
              HubspotSDK::Automation::ActionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol,
            app_id: Integer,
            definition_id: String,
            body: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionFunctionIdentifier)
        end
        def create_or_replace_by_function_type(
          # Path param
          function_type,
          # Path param
          app_id:,
          # Path param
          definition_id:,
          # Body param
          body:,
          request_options: {}
        )
        end

        # Set whether a custom action definition requires an object.
        sig do
          params(
            definition_id: String,
            app_id: Integer,
            requires_object: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def create_requires_object(
          # Path param
          definition_id,
          # Path param
          app_id:,
          # Body param: Indicates whether a custom action definition requires an associated
          # object.
          requires_object:,
          request_options: {}
        )
        end

        # Delete a function within a given definition.
        sig do
          params(
            function_type:
              HubspotSDK::Automation::ActionDeleteByFunctionTypeParams::FunctionType::OrSymbol,
            app_id: Integer,
            definition_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_by_function_type(
          function_type,
          app_id:,
          definition_id:,
          request_options: {}
        )
        end

        # Retrieve a specific revision of a definition by revision ID.
        sig do
          params(
            revision_id: String,
            app_id: Integer,
            definition_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionRevision)
        end
        def get(revision_id, app_id:, definition_id:, request_options: {})
        end

        # Retrieve functions of a specific type for a given definition.
        sig do
          params(
            function_type:
              HubspotSDK::Automation::ActionGetByFunctionTypeParams::FunctionType::OrSymbol,
            app_id: Integer,
            definition_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicActionFunction)
        end
        def get_by_function_type(
          function_type,
          app_id:,
          definition_id:,
          request_options: {}
        )
        end

        # Retrieve whether a custom action definition requires an object.
        sig do
          params(
            definition_id: String,
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Automation::PublicActionDefinitionRequiresObjectResponse
          )
        end
        def get_requires_object(definition_id, app_id:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
