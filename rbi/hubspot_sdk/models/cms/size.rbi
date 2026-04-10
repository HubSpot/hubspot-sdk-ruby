# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Size < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Size, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::Size::Units::OrSymbol) }
        attr_accessor :units

        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            units: HubSpotSDK::Cms::Size::Units::OrSymbol,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(units:, value:)
        end

        sig do
          override.returns(
            { units: HubSpotSDK::Cms::Size::Units::OrSymbol, value: Float }
          )
        end
        def to_hash
        end

        module Units
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::Size::Units) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERCENT = T.let(:"%", HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          CH = T.let(:ch, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          CM = T.let(:cm, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          EM = T.let(:em, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          EX = T.let(:ex, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          IN = T.let(:in, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          LH = T.let(:lh, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          MM = T.let(:mm, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          PC = T.let(:pc, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          PT = T.let(:pt, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          PX = T.let(:px, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          Q = T.let(:Q, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          REM = T.let(:rem, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          VH = T.let(:vh, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          VMAX = T.let(:vmax, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          VMIN = T.let(:vmin, HubSpotSDK::Cms::Size::Units::TaggedSymbol)
          VW = T.let(:vw, HubSpotSDK::Cms::Size::Units::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::Size::Units::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
