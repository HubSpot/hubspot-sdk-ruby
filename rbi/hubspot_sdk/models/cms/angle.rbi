# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Angle < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Angle, HubspotSDK::Internal::AnyHash)
          end

        # The unit of measurement for the angle.
        sig { returns(HubspotSDK::Cms::Angle::Units::OrSymbol) }
        attr_accessor :units

        # The numerical representation of the angle.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            units: HubspotSDK::Cms::Angle::Units::OrSymbol,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The unit of measurement for the angle.
          units:,
          # The numerical representation of the angle.
          value:
        )
        end

        sig do
          override.returns(
            { units: HubspotSDK::Cms::Angle::Units::OrSymbol, value: Float }
          )
        end
        def to_hash
        end

        # The unit of measurement for the angle.
        module Units
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Angle::Units) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEG = T.let(:deg, HubspotSDK::Cms::Angle::Units::TaggedSymbol)
          GRAD = T.let(:grad, HubspotSDK::Cms::Angle::Units::TaggedSymbol)
          RAD = T.let(:rad, HubspotSDK::Cms::Angle::Units::TaggedSymbol)
          TURN = T.let(:turn, HubspotSDK::Cms::Angle::Units::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Angle::Units::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
