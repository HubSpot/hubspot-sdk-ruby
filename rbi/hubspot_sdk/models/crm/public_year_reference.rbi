# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicYearReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicYearReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The day component of the year reference.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the year reference.
        sig { returns(Integer) }
        attr_accessor :month

        # Indicates the type of reference (YEAR).
        sig do
          returns(HubSpotSDK::Crm::PublicYearReference::ReferenceType::OrSymbol)
        end
        attr_accessor :reference_type

        # The hour component of the year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            month: Integer,
            reference_type:
              HubSpotSDK::Crm::PublicYearReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day component of the year reference.
          day:,
          # The month component of the year reference.
          month:,
          # Indicates the type of reference (YEAR).
          reference_type:,
          # The hour component of the year reference.
          hour: nil,
          # The millisecond component of the year reference.
          millisecond: nil,
          # The minute component of the year reference.
          minute: nil,
          # The second component of the year reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              reference_type:
                HubSpotSDK::Crm::PublicYearReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (YEAR).
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicYearReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YEAR =
            T.let(
              :YEAR,
              HubSpotSDK::Crm::PublicYearReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicYearReference::ReferenceType::TaggedSymbol
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
