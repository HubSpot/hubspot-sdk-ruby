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

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIInputVariable]) }
        attr_accessor :input_fields

        sig do
          returns(T::Array[HubspotSDK::Automation::APIEnumerationOutputField])
        end
        attr_accessor :output_fields

        sig { returns(String) }
        attr_accessor :runtime

        sig { returns(T::Array[String]) }
        attr_accessor :secret_names

        sig { returns(String) }
        attr_accessor :source_code

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
          action_id:,
          input_fields:,
          output_fields:,
          runtime:,
          secret_names:,
          source_code:,
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
