# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Size < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(HubspotSDK::Cms::Blogs::Size, HubspotSDK::Internal::AnyHash)
            end

          sig { returns(HubspotSDK::Cms::Blogs::Size::Units::OrSymbol) }
          attr_accessor :units

          sig { returns(Float) }
          attr_accessor :value

          sig do
            params(
              units: HubspotSDK::Cms::Blogs::Size::Units::OrSymbol,
              value: Float
            ).returns(T.attached_class)
          end
          def self.new(units:, value:)
          end

          sig do
            override.returns(
              {
                units: HubspotSDK::Cms::Blogs::Size::Units::OrSymbol,
                value: Float
              }
            )
          end
          def to_hash
          end

          module Units
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::Cms::Blogs::Size::Units)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            Unknown0 =
              T.let(:"%", HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            CH = T.let(:ch, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            CM = T.let(:cm, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            EM = T.let(:em, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            EX = T.let(:ex, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            IN = T.let(:in, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            LH = T.let(:lh, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            MM = T.let(:mm, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            PC = T.let(:pc, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            PT = T.let(:pt, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            PX = T.let(:px, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            Q = T.let(:Q, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            REM = T.let(:rem, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            VH = T.let(:vh, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            VMAX =
              T.let(:vmax, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            VMIN =
              T.let(:vmin, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)
            VW = T.let(:vw, HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol)

            sig do
              override.returns(
                T::Array[HubspotSDK::Cms::Blogs::Size::Units::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
