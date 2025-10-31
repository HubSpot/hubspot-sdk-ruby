# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APISort < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APISort,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Automation::APISort::Order::OrSymbol) }
        attr_accessor :order

        sig { returns(String) }
        attr_accessor :property

        sig { returns(T.nilable(String)) }
        attr_reader :missing

        sig { params(missing: String).void }
        attr_writer :missing

        sig do
          params(
            order: HubspotSDK::Automation::APISort::Order::OrSymbol,
            property: String,
            missing: String
          ).returns(T.attached_class)
        end
        def self.new(order:, property:, missing: nil)
        end

        sig do
          override.returns(
            {
              order: HubspotSDK::Automation::APISort::Order::OrSymbol,
              property: String,
              missing: String
            }
          )
        end
        def to_hash
        end

        module Order
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APISort::Order)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(:ASC, HubspotSDK::Automation::APISort::Order::TaggedSymbol)
          DESC =
            T.let(:DESC, HubspotSDK::Automation::APISort::Order::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Automation::APISort::Order::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
