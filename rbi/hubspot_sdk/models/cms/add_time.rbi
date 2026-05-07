# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class AddTime < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::AddTime, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::AddTime::Operator::OrSymbol) }
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

        sig { returns(T.nilable(Float)) }
        attr_reader :value

        sig { params(value: Float).void }
        attr_writer :value

        sig do
          params(
            operator: HubSpotSDK::Cms::AddTime::Operator::OrSymbol,
            string_to_check: T.anything,
            inputs: T::Array[T.anything],
            property_name: String,
            value: Float
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
              operator: HubSpotSDK::Cms::AddTime::Operator::OrSymbol,
              string_to_check: T.anything,
              inputs: T::Array[T.anything],
              property_name: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::AddTime::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADD_TIME =
            T.let(:ADD_TIME, HubSpotSDK::Cms::AddTime::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::AddTime::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
