# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APICustomCodeAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APICustomCodeAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for this action.
        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIInputVariable]) }
        attr_accessor :input_fields

        # The list of output fields that this custom action makes available to the rest of
        # the flow.
        sig do
          returns(T::Array[HubspotSDK::Automation::APIEnumerationOutputField])
        end
        attr_accessor :output_fields

        # The runtime to use to execute the source code. Supported runtimes are:
        # "NODE16X", "NODE20X", "PYTHON39"
        sig { returns(String) }
        attr_accessor :runtime

        # The names of any "secrets" setup in this portal that will be used in this
        # action.
        sig { returns(T::Array[String]) }
        attr_accessor :secret_names

        # The source code to execute when this action executes.
        sig { returns(String) }
        attr_accessor :source_code

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        sig do
          returns(HubspotSDK::Automation::APICustomCodeAction::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APIConnection)) }
        attr_reader :connection

        sig do
          params(connection: HubspotSDK::Automation::APIConnection::OrHash).void
        end
        attr_writer :connection

        sig do
          params(
            action_id: String,
            input_fields:
              T::Array[HubspotSDK::Automation::APIInputVariable::OrHash],
            output_fields:
              T::Array[
                HubspotSDK::Automation::APIEnumerationOutputField::OrHash
              ],
            runtime: String,
            secret_names: T::Array[String],
            source_code: String,
            type: HubspotSDK::Automation::APICustomCodeAction::Type::OrSymbol,
            connection: HubspotSDK::Automation::APIConnection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for this action.
          action_id:,
          input_fields:,
          # The list of output fields that this custom action makes available to the rest of
          # the flow.
          output_fields:,
          # The runtime to use to execute the source code. Supported runtimes are:
          # "NODE16X", "NODE20X", "PYTHON39"
          runtime:,
          # The names of any "secrets" setup in this portal that will be used in this
          # action.
          secret_names:,
          # The source code to execute when this action executes.
          source_code:,
          # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
          # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
          type:,
          connection: nil
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              input_fields: T::Array[HubspotSDK::Automation::APIInputVariable],
              output_fields:
                T::Array[HubspotSDK::Automation::APIEnumerationOutputField],
              runtime: String,
              secret_names: T::Array[String],
              source_code: String,
              type: HubspotSDK::Automation::APICustomCodeAction::Type::OrSymbol,
              connection: HubspotSDK::Automation::APIConnection
            }
          )
        end
        def to_hash
        end

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APICustomCodeAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM_CODE =
            T.let(
              :CUSTOM_CODE,
              HubspotSDK::Automation::APICustomCodeAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APICustomCodeAction::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
