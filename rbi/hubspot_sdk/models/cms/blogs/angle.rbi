# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Angle < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::Angle,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The unit of measurement for the angle.
          sig { returns(HubspotSDK::Cms::Blogs::Angle::Units::OrSymbol) }
          attr_accessor :units

          # The numerical representation of the angle.
          sig { returns(Float) }
          attr_accessor :value

          sig do
            params(
              units: HubspotSDK::Cms::Blogs::Angle::Units::OrSymbol,
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
              {
                units: HubspotSDK::Cms::Blogs::Angle::Units::OrSymbol,
                value: Float
              }
            )
          end
          def to_hash
          end

          # The unit of measurement for the angle.
          module Units
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::Cms::Blogs::Angle::Units)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEG =
              T.let(:deg, HubspotSDK::Cms::Blogs::Angle::Units::TaggedSymbol)
            GRAD =
              T.let(:grad, HubspotSDK::Cms::Blogs::Angle::Units::TaggedSymbol)
            RAD =
              T.let(:rad, HubspotSDK::Cms::Blogs::Angle::Units::TaggedSymbol)
            TURN =
              T.let(:turn, HubspotSDK::Cms::Blogs::Angle::Units::TaggedSymbol)

            sig do
              override.returns(
                T::Array[HubspotSDK::Cms::Blogs::Angle::Units::TaggedSymbol]
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
