# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APISingleConnectionAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APISingleConnectionAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(String) }
        attr_accessor :action_type_id

        sig { returns(Integer) }
        attr_accessor :action_type_version

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :fields

        sig do
          returns(
            HubspotSDK::Automation::APISingleConnectionAction::Type::OrSymbol
          )
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
            action_type_id: String,
            action_type_version: Integer,
            fields: T::Hash[Symbol, T.anything],
            type:
              HubspotSDK::Automation::APISingleConnectionAction::Type::OrSymbol,
            connection: HubspotSDK::Automation::APIConnection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          action_id:,
          action_type_id:,
          action_type_version:,
          fields:,
          type:,
          connection: nil
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              action_type_id: String,
              action_type_version: Integer,
              fields: T::Hash[Symbol, T.anything],
              type:
                HubspotSDK::Automation::APISingleConnectionAction::Type::OrSymbol,
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
              T.all(
                Symbol,
                HubspotSDK::Automation::APISingleConnectionAction::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_CONNECTION =
            T.let(
              :SINGLE_CONNECTION,
              HubspotSDK::Automation::APISingleConnectionAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APISingleConnectionAction::Type::TaggedSymbol
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
