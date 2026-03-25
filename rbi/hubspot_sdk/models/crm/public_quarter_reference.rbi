# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicQuarterReference < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicQuarterReference,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The day component of the quarter reference.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the quarter reference.
        sig { returns(Integer) }
        attr_accessor :month

        # Indicates the type of reference (QUARTER).
        sig do
          returns(
            HubspotSDK::Crm::PublicQuarterReference::ReferenceType::OrSymbol
          )
        end
        attr_accessor :reference_type

        # The hour component of the quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the quarter reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day: Integer,
            month: Integer,
            reference_type:
              HubspotSDK::Crm::PublicQuarterReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day component of the quarter reference.
          day:,
          # The month component of the quarter reference.
          month:,
          # Indicates the type of reference (QUARTER).
          reference_type:,
          # The hour component of the quarter reference.
          hour: nil,
          # The millisecond component of the quarter reference.
          millisecond: nil,
          # The minute component of the quarter reference.
          minute: nil,
          # The second component of the quarter reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              reference_type:
                HubspotSDK::Crm::PublicQuarterReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (QUARTER).
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicQuarterReference::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUARTER =
            T.let(
              :QUARTER,
              HubspotSDK::Crm::PublicQuarterReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicQuarterReference::ReferenceType::TaggedSymbol
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
