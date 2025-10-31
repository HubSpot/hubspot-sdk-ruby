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

        # The ID for this action.
        sig { returns(String) }
        attr_accessor :action_id

        # The ID of the actionType to use.
        sig { returns(String) }
        attr_accessor :action_type_id

        # The version of this actionType to use.
        sig { returns(Integer) }
        attr_accessor :action_type_version

        # The fields to pass into this action. Different action types accept different
        # fields.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :fields

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
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
          # The ID for this action.
          action_id:,
          # The ID of the actionType to use.
          action_type_id:,
          # The version of this actionType to use.
          action_type_version:,
          # The fields to pass into this action. Different action types accept different
          # fields.
          fields:,
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

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
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
