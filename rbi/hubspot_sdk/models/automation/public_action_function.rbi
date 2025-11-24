# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionFunction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionFunction,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :function_source

        sig do
          returns(
            HubspotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol
          )
        end
        attr_accessor :function_type

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            function_source: String,
            function_type:
              HubspotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(function_source:, function_type:, id: nil)
        end

        sig do
          override.returns(
            {
              function_source: String,
              function_type:
                HubspotSDK::Automation::PublicActionFunction::FunctionType::OrSymbol,
              id: String
            }
          )
        end
        def to_hash
        end

        module FunctionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicActionFunction::FunctionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST_ACTION_EXECUTION =
            T.let(
              :POST_ACTION_EXECUTION,
              HubspotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          POST_FETCH_OPTIONS =
            T.let(
              :POST_FETCH_OPTIONS,
              HubspotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          PRE_ACTION_EXECUTION =
            T.let(
              :PRE_ACTION_EXECUTION,
              HubspotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )
          PRE_FETCH_OPTIONS =
            T.let(
              :PRE_FETCH_OPTIONS,
              HubspotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicActionFunction::FunctionType::TaggedSymbol
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
