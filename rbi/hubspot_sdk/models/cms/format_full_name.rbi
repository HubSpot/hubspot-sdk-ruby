# typed: strong

module HubspotSDK
  module Models
    module Cms
      class FormatFullName < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::FormatFullName,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::FormatFullName::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::Expression])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[HubspotSDK::Cms::Expression]).void }
        attr_writer :inputs

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
            operator: HubspotSDK::Cms::FormatFullName::Operator::OrSymbol,
            inputs: T::Array[HubspotSDK::Cms::Expression],
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::FormatFullName::Operator::TaggedSymbol,
              inputs: T::Array[HubspotSDK::Cms::Expression],
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
              T.all(Symbol, HubspotSDK::Cms::FormatFullName::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FORMAT_FULL_NAME =
            T.let(
              :FORMAT_FULL_NAME,
              HubspotSDK::Cms::FormatFullName::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::FormatFullName::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
