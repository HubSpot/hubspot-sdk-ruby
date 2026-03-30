# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Size < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Size, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Size::Units::OrSymbol) }
        attr_accessor :units

        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            units: HubspotSDK::Cms::Size::Units::OrSymbol,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(units:, value:)
        end

        sig do
          override.returns(
            { units: HubspotSDK::Cms::Size::Units::OrSymbol, value: Float }
          )
        end
        def to_hash
        end

        module Units
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Size::Units) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          Unknown0 = T.let(:"%", HubspotSDK::Cms::Size::Units::TaggedSymbol)
          CH = T.let(:ch, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          CM = T.let(:cm, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          EM = T.let(:em, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          EX = T.let(:ex, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          IN = T.let(:in, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          LH = T.let(:lh, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          MM = T.let(:mm, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          PC = T.let(:pc, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          PT = T.let(:pt, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          PX = T.let(:px, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          Q = T.let(:Q, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          REM = T.let(:rem, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          VH = T.let(:vh, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          VMAX = T.let(:vmax, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          VMIN = T.let(:vmin, HubspotSDK::Cms::Size::Units::TaggedSymbol)
          VW = T.let(:vw, HubspotSDK::Cms::Size::Units::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Size::Units::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
