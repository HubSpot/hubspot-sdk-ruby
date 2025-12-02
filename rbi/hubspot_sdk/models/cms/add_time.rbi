# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AddTime < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::AddTime, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::AddTime::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(HubspotSDK::Cms::Expression) }
        attr_accessor :string_to_check

        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::Expression])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[HubspotSDK::Cms::Expression]).void }
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
            operator: HubspotSDK::Cms::AddTime::Operator::OrSymbol,
            string_to_check: HubspotSDK::Cms::Expression,
            inputs: T::Array[HubspotSDK::Cms::Expression],
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
              operator: HubspotSDK::Cms::AddTime::Operator::TaggedSymbol,
              string_to_check: HubspotSDK::Cms::Expression,
              inputs: T::Array[HubspotSDK::Cms::Expression],
              property_name: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::AddTime::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADD_TIME =
            T.let(:ADD_TIME, HubspotSDK::Cms::AddTime::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::AddTime::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
