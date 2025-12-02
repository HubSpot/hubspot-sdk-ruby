# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BeginsWith < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::BeginsWith, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::BeginsWith::Operator::TaggedSymbol) }
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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :value

        sig { params(value: T::Boolean).void }
        attr_writer :value

        sig do
          params(
            operator: HubspotSDK::Cms::BeginsWith::Operator::OrSymbol,
            string_to_check: T.anything,
            inputs: T::Array[T.anything],
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
              operator: HubspotSDK::Cms::BeginsWith::Operator::TaggedSymbol,
              string_to_check: T.anything,
              inputs: T::Array[T.anything],
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
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::BeginsWith::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEGINS_WITH =
            T.let(
              :BEGINS_WITH,
              HubspotSDK::Cms::BeginsWith::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::BeginsWith::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
