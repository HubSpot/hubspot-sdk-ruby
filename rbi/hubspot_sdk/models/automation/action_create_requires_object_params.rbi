# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ActionCreateRequiresObjectParams < HubspotSDK::Models::Automation::PublicActionDefinitionRequiresObjectRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ActionCreateRequiresObjectParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :definition_id

        sig do
          params(
            app_id: Integer,
            definition_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, definition_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              definition_id: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
