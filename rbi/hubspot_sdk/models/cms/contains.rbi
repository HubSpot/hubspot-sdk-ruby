# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Contains < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Contains, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Contains::Operator::OrSymbol) }
        attr_accessor :operator

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :string_to_check

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :value

        sig { params(value: T::Boolean).void }
        attr_writer :value

        sig do
          params(
            operator: HubspotSDK::Cms::Contains::Operator::OrSymbol,
            string_to_check: T::Hash[Symbol, T.anything],
            inputs: T::Array[T::Hash[Symbol, T.anything]],
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          operator:,
          string_to_check:,
          inputs: nil,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::Contains::Operator::OrSymbol,
              string_to_check: T::Hash[Symbol, T.anything],
              inputs: T::Array[T::Hash[Symbol, T.anything]],
              property_name: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Contains::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTAINS =
            T.let(:CONTAINS, HubspotSDK::Cms::Contains::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Contains::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
