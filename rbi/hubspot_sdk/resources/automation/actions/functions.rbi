# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Functions
          # Retrieve all functions included in a definition.
          sig do
            params(
              definition_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging
            )
          end
          def list(
            # The ID of the definition.
            definition_id,
            # The ID of the app.
            app_id:,
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
                HubspotSDK::Automation::Actions::FunctionDeleteParams::FunctionType::OrSymbol,
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

          # Update a function for a given definition by ID.
          sig do
            params(
              function_id: String,
              app_id: Integer,
              definition_id: String,
              function_type:
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::OrSymbol,
              body: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionFunctionIdentifier)
          end
          def create_or_replace(
            # Path param: The ID of the function.
            function_id,
            # Path param: The ID of the app.
            app_id:,
            # Path param: The ID of the definition.
            definition_id:,
            # Path param: The type of function. Can be `PRE_ACTION_EXECUTION`,
            # `PRE_FETCH_OPTIONS`, `POST_FETCH_OPTIONS`, `POST_ACTION_EXECUTION`.
            function_type:,
            # Body param:
            body:,
            request_options: {}
          )
          end

          # Add a function for a given definition.
          sig do
            params(
              function_type:
                HubspotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              body: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionFunctionIdentifier)
          end
          def create_or_replace_by_function_type(
            # Path param: The type of function. Can be `PRE_ACTION_EXECUTION`,
            # `PRE_FETCH_OPTIONS`, `POST_FETCH_OPTIONS`, `POST_ACTION_EXECUTION`.
            function_type,
            # Path param: The ID of the app.
            app_id:,
            # Path param: The ID of the definition.
            definition_id:,
            # Body param:
            body:,
            request_options: {}
          )
          end

          # Delete a function within a given definition.
          sig do
            params(
              function_type:
                HubspotSDK::Automation::Actions::FunctionDeleteByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_by_function_type(
            # The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
            # `POST_FETCH_OPTIONS`, `POST_ACTION_EXECUTION`.
            function_type,
            # The ID of the app.
            app_id:,
            # The ID of the definition.
            definition_id:,
            request_options: {}
          )
          end

          # Retrieve a specific function from a given definition.
          sig do
            params(
              function_id: String,
              app_id: Integer,
              definition_id: String,
              function_type:
                HubspotSDK::Automation::Actions::FunctionGetParams::FunctionType::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionFunction)
          end
          def get(
            # The ID of the function.
            function_id,
            # The ID of the app.
            app_id:,
            # The ID of the definition.
            definition_id:,
            # The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
            # `POST_FETCH_OPTIONS`, `POST_ACTION_EXECUTION`.
            function_type:,
            request_options: {}
          )
          end

          # Retrieve functions of a specific type for a given definition.
          sig do
            params(
              function_type:
                HubspotSDK::Automation::Actions::FunctionGetByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicActionFunction)
          end
          def get_by_function_type(
            # The type of function. Can be `PRE_ACTION_EXECUTION`, `PRE_FETCH_OPTIONS`,
            # `POST_FETCH_OPTIONS`, `POST_ACTION_EXECUTION`.
            function_type,
            # The ID of the app.
            app_id:,
            # The ID of the definition.
            definition_id:,
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
