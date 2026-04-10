# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Angle < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Angle, HubSpotSDK::Internal::AnyHash)
          end

        # The unit of measurement for the angle.
        sig { returns(HubSpotSDK::Cms::Angle::Units::OrSymbol) }
        attr_accessor :units

        # The numerical representation of the angle.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            units: HubSpotSDK::Cms::Angle::Units::OrSymbol,
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
            { units: HubSpotSDK::Cms::Angle::Units::OrSymbol, value: Float }
          )
        end
        def to_hash
        end

        # The unit of measurement for the angle.
        module Units
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::Angle::Units) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEG = T.let(:deg, HubSpotSDK::Cms::Angle::Units::TaggedSymbol)
          GRAD = T.let(:grad, HubSpotSDK::Cms::Angle::Units::TaggedSymbol)
          RAD = T.let(:rad, HubSpotSDK::Cms::Angle::Units::TaggedSymbol)
          TURN = T.let(:turn, HubSpotSDK::Cms::Angle::Units::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::Angle::Units::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
