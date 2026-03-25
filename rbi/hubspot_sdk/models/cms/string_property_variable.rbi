# typed: strong

module HubspotSDK
  module Models
    module Cms
      class StringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::StringPropertyVariable,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::StringPropertyVariable::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubspotSDK::Cms::StringPropertyVariable::Operator::OrSymbol,
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Cms::StringPropertyVariable::Operator::TaggedSymbol,
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::StringPropertyVariable::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING_PROPERTY_VARIABLE =
            T.let(
              :STRING_PROPERTY_VARIABLE,
              HubspotSDK::Cms::StringPropertyVariable::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::StringPropertyVariable::Operator::TaggedSymbol
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
