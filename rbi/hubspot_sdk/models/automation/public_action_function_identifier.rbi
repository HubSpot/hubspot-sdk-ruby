# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionFunctionIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionFunctionIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        sig do
          returns(
            HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
          )
        end
        attr_accessor :function_type

        # The unique identifier for the function.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            function_type:
              HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::OrSymbol,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of function, with accepted values: POST_ACTION_EXECUTION,
          # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
          function_type:,
          # The unique identifier for the function.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              function_type:
                HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol,
              id: String
            }
          )
        end
        def to_hash
        end

        # The type of function, with accepted values: POST_ACTION_EXECUTION,
        # POST_FETCH_OPTIONS, PRE_ACTION_EXECUTION, PRE_FETCH_OPTIONS.
        module FunctionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST_ACTION_EXECUTION =
            T.let(
              :POST_ACTION_EXECUTION,
              HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
            )
          POST_FETCH_OPTIONS =
            T.let(
              :POST_FETCH_OPTIONS,
              HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
            )
          PRE_ACTION_EXECUTION =
            T.let(
              :PRE_ACTION_EXECUTION,
              HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
            )
          PRE_FETCH_OPTIONS =
            T.let(
              :PRE_FETCH_OPTIONS,
              HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType::TaggedSymbol
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
