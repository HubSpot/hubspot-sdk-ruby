# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIWebhookAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIWebhookAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for this action.
        sig { returns(String) }
        attr_accessor :action_id

        # The HTTP method to use when calling the webhook URL
        sig do
          returns(HubspotSDK::Automation::APIWebhookAction::Method::OrSymbol)
        end
        attr_accessor :method_

        sig { returns(T::Array[HubspotSDK::Automation::APIInputVariable]) }
        attr_accessor :query_params

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        sig do
          returns(HubspotSDK::Automation::APIWebhookAction::Type::OrSymbol)
        end
        attr_accessor :type

        # The URL to call each time this action is executed.
        sig { returns(String) }
        attr_accessor :webhook_url

        # The type of auth to use when calling the webhook endpoint.
        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings,
                HubspotSDK::Automation::APISignatureWebhookAuthSettings
              )
            )
          )
        end
        attr_reader :auth_settings

        sig do
          params(
            auth_settings:
              T.any(
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::OrHash,
                HubspotSDK::Automation::APISignatureWebhookAuthSettings::OrHash
              )
          ).void
        end
        attr_writer :auth_settings

        sig { returns(T.nilable(HubspotSDK::Automation::APIConnection)) }
        attr_reader :connection

        sig do
          params(connection: HubspotSDK::Automation::APIConnection::OrHash).void
        end
        attr_writer :connection

        sig do
          params(
            action_id: String,
            method_: HubspotSDK::Automation::APIWebhookAction::Method::OrSymbol,
            query_params:
              T::Array[HubspotSDK::Automation::APIInputVariable::OrHash],
            type: HubspotSDK::Automation::APIWebhookAction::Type::OrSymbol,
            webhook_url: String,
            auth_settings:
              T.any(
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::OrHash,
                HubspotSDK::Automation::APISignatureWebhookAuthSettings::OrHash
              ),
            connection: HubspotSDK::Automation::APIConnection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for this action.
          action_id:,
          # The HTTP method to use when calling the webhook URL
          method_:,
          query_params:,
          # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
          # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
          type:,
          # The URL to call each time this action is executed.
          webhook_url:,
          # The type of auth to use when calling the webhook endpoint.
          auth_settings: nil,
          connection: nil
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              method_:
                HubspotSDK::Automation::APIWebhookAction::Method::OrSymbol,
              query_params: T::Array[HubspotSDK::Automation::APIInputVariable],
              type: HubspotSDK::Automation::APIWebhookAction::Type::OrSymbol,
              webhook_url: String,
              auth_settings:
                T.any(
                  HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings,
                  HubspotSDK::Automation::APISignatureWebhookAuthSettings
                ),
              connection: HubspotSDK::Automation::APIConnection
            }
          )
        end
        def to_hash
        end

        # The HTTP method to use when calling the webhook URL
        module Method
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIWebhookAction::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONNECT =
            T.let(
              :CONNECT,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          HEAD =
            T.let(
              :HEAD,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          OPTIONS =
            T.let(
              :OPTIONS,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          PATCH =
            T.let(
              :PATCH,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          PUT =
            T.let(
              :PUT,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )
          TRACE =
            T.let(
              :TRACE,
              HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIWebhookAction::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIWebhookAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK =
            T.let(
              :WEBHOOK,
              HubspotSDK::Automation::APIWebhookAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIWebhookAction::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of auth to use when calling the webhook endpoint.
        module AuthSettings
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings,
                HubspotSDK::Automation::APISignatureWebhookAuthSettings
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIWebhookAction::AuthSettings::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
