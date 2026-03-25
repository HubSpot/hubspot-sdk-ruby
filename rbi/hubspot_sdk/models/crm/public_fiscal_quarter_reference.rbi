# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicFiscalQuarterReference < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicFiscalQuarterReference,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The day component of the fiscal quarter reference.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the fiscal quarter reference.
        sig { returns(Integer) }
        attr_accessor :month

        # Indicates the type of reference (FISCAL_QUARTER).
        sig do
          returns(
            HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType::OrSymbol
          )
        end
        attr_accessor :reference_type

        # The hour component of the fiscal quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the fiscal quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the fiscal quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the fiscal quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            month: Integer,
            reference_type:
              HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day component of the fiscal quarter reference.
          day:,
          # The month component of the fiscal quarter reference.
          month:,
          # Indicates the type of reference (FISCAL_QUARTER).
          reference_type:,
          # The hour component of the fiscal quarter reference.
          hour: nil,
          # The millisecond component of the fiscal quarter reference.
          millisecond: nil,
          # The minute component of the fiscal quarter reference.
          minute: nil,
          # The second component of the fiscal quarter reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              reference_type:
                HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (FISCAL_QUARTER).
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FISCAL_QUARTER =
            T.let(
              :FISCAL_QUARTER,
              HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicFiscalQuarterReference::ReferenceType::TaggedSymbol
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
