# typed: strong

module HubSpotSDK
  module Models
    module Events
      class QuarterReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::QuarterReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(Integer) }
        attr_accessor :month

        sig do
          returns(
            HubSpotSDK::Events::QuarterReference::ReferenceType::TaggedSymbol
          )
        end
        attr_accessor :reference_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            month: Integer,
            reference_type:
              HubSpotSDK::Events::QuarterReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          day:,
          month:,
          reference_type:,
          hour: nil,
          millisecond: nil,
          minute: nil,
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              reference_type:
                HubSpotSDK::Events::QuarterReference::ReferenceType::TaggedSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::QuarterReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUARTER =
            T.let(
              :QUARTER,
              HubSpotSDK::Events::QuarterReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::QuarterReference::ReferenceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
