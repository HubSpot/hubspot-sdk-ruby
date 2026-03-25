# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
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
          action_url:,
          functions:,
          input_fields:,
          labels:,
          object_types:,
          published:,
          archived_at: nil,
          execution_rules: nil,
          input_field_dependencies: nil,
          object_request_options: nil,
          output_fields: nil,
          request_options: {}
        )
        end

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
          # Body param
          action_url: nil,
          # Body param
          execution_rules: nil,
          # Body param
          input_field_dependencies: nil,
          # Body param
          input_fields: nil,
          # Body param
          labels: nil,
          # Body param
          object_request_options: nil,
          # Body param
          object_types: nil,
          # Body param
          output_fields: nil,
          # Body param
          published: nil,
          request_options: {}
        )
        end

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
          output_fields:,
          typed_outputs:,
          failure_reason_type: nil,
          request_context: nil,
          request_options: {}
        )
        end

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
          # Body param
          requires_object:,
          request_options: {}
        )
        end

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
