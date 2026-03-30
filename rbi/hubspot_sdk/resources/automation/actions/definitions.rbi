# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Definitions
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

          # Retrieve custom workflow action definitions by app ID.
          sig do
            params(
              app_id: Integer,
              after: String,
              archived: T::Boolean,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Automation::PublicActionDefinition
              ]
            )
          end
          def list(
            app_id,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Delete an action definition by ID.
          sig do
            params(
              definition_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(definition_id, app_id:, request_options: {})
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

          # Retrieve a custom workflow action definition by ID.
          sig do
            params(
              definition_id: String,
              app_id: Integer,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionDefinition)
          end
          def get(
            # Path param
            definition_id,
            # Path param
            app_id:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
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
end
