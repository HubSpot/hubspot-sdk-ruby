# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Now < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Now, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::Now::Operator::OrSymbol) }
        attr_accessor :operator

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
            operator: HubSpotSDK::Cms::Now::Operator::OrSymbol,
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator: HubSpotSDK::Cms::Now::Operator::OrSymbol,
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
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::Now::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOW = T.let(:NOW, HubSpotSDK::Cms::Now::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::Now::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
