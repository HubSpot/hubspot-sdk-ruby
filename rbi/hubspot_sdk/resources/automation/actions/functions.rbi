# typed: strong

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        class Functions
          # Retrieve all functions included in a definition.
          sig do
            params(
              definition_id: String,
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging
            )
          end
          def list(definition_id, app_id:, request_options: {})
          end

          # Archive a function for a specific definition.
          sig do
            params(
              function_id: String,
              app_id: Integer,
              definition_id: String,
              function_type:
                HubSpotSDK::Automation::Actions::FunctionDeleteParams::FunctionType::OrSymbol,
              request_options: HubSpotSDK::RequestOptions::OrHash
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
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceParams::FunctionType::OrSymbol,
              body: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Automation::PublicActionFunctionIdentifier)
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
                HubSpotSDK::Automation::Actions::FunctionCreateOrReplaceByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              body: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Automation::PublicActionFunctionIdentifier)
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

          # Delete a function within a given definition.
          sig do
            params(
              function_type:
                HubSpotSDK::Automation::Actions::FunctionDeleteByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_by_function_type(
            function_type,
            app_id:,
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
                HubSpotSDK::Automation::Actions::FunctionGetParams::FunctionType::OrSymbol,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Automation::PublicActionFunction)
          end
          def get(
            function_id,
            app_id:,
            definition_id:,
            function_type:,
            request_options: {}
          )
          end

          # Retrieve functions of a specific type for a given definition.
          sig do
            params(
              function_type:
                HubSpotSDK::Automation::Actions::FunctionGetByFunctionTypeParams::FunctionType::OrSymbol,
              app_id: Integer,
              definition_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Automation::PublicActionFunction)
          end
          def get_by_function_type(
            function_type,
            app_id:,
            definition_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
