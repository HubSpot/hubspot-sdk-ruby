# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Substring < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Substring, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Substring::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(T.anything) }
        attr_accessor :string_to_check

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T.anything]).void }
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
            operator: HubspotSDK::Cms::Substring::Operator::OrSymbol,
            string_to_check: T.anything,
            inputs: T::Array[T.anything],
            property_name: String,
            value: String
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
              operator: HubspotSDK::Cms::Substring::Operator::TaggedSymbol,
              string_to_check: T.anything,
              inputs: T::Array[T.anything],
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
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Substring::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSTRING =
            T.let(
              :SUBSTRING,
              HubspotSDK::Cms::Substring::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Substring::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
