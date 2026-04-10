# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicFiscalYearReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicFiscalYearReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The day component of the fiscal year reference.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the fiscal year reference.
        sig { returns(Integer) }
        attr_accessor :month

        # Indicates the type of reference (FISCAL_YEAR).
        sig do
          returns(
            HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType::OrSymbol
          )
        end
        attr_accessor :reference_type

        # The hour component of the fiscal year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the fiscal year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the fiscal year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the fiscal year reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            month: Integer,
            reference_type:
              HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day component of the fiscal year reference.
          day:,
          # The month component of the fiscal year reference.
          month:,
          # Indicates the type of reference (FISCAL_YEAR).
          reference_type:,
          # The hour component of the fiscal year reference.
          hour: nil,
          # The millisecond component of the fiscal year reference.
          millisecond: nil,
          # The minute component of the fiscal year reference.
          minute: nil,
          # The second component of the fiscal year reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              reference_type:
                HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (FISCAL_YEAR).
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FISCAL_YEAR =
            T.let(
              :FISCAL_YEAR,
              HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicFiscalYearReference::ReferenceType::TaggedSymbol
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
