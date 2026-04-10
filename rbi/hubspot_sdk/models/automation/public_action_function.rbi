# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicActionFunction < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicActionFunction,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The source code or script that defines the function's behavior.
        sig { returns(String) }
        attr_accessor :function_source

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        sig do
          returns(
            HubSpotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol
          )
        end
        attr_accessor :function_type

        # The unique identifier for the action function.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            function_source: String,
            function_type:
              HubSpotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The source code or script that defines the function's behavior.
          function_source:,
          # The type of function, with accepted values: POST_ACTION_EXECUTION,
          # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
          function_type:,
          # The unique identifier for the action function.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              function_source: String,
              function_type:
                HubSpotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol,
              id: String
            }
          )
        end
        def to_hash
        end

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        module FunctionType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::PublicActionFunction::FunctionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST_ACTION_EXECUTION =
            T.let(
              :POST_ACTION_EXECUTION,
              HubSpotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          POST_FETCH_OPTIONS =
            T.let(
              :POST_FETCH_OPTIONS,
              HubSpotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          PRE_ACTION_EXECUTION =
            T.let(
              :PRE_ACTION_EXECUTION,
              HubSpotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          PRE_FETCH_OPTIONS =
            T.let(
              :PRE_FETCH_OPTIONS,
              HubSpotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
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
