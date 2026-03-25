# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicTodayReference < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicTodayReference,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of reference (TODAY).
        sig do
          returns(
            HubspotSDK::Crm::PublicTodayReference::ReferenceType::OrSymbol
          )
        end
        attr_accessor :reference_type

        # The hour component of the current day reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the current day reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the current day reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the current day reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            reference_type:
              HubspotSDK::Crm::PublicTodayReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the type of reference (TODAY).
          reference_type:,
          # The hour component of the current day reference.
          hour: nil,
          # The millisecond component of the current day reference.
          millisecond: nil,
          # The minute component of the current day reference.
          minute: nil,
          # The second component of the current day reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              reference_type:
                HubspotSDK::Crm::PublicTodayReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (TODAY).
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicTodayReference::ReferenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TODAY =
            T.let(
              :TODAY,
              HubspotSDK::Crm::PublicTodayReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicTodayReference::ReferenceType::TaggedSymbol
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
