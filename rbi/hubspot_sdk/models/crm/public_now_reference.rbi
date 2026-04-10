# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicNowReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicNowReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of reference (NOW).
        sig do
          returns(HubSpotSDK::Crm::PublicNowReference::ReferenceType::OrSymbol)
        end
        attr_accessor :reference_type

        # The hour component of the current time reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the current time reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the current time reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the current time reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            reference_type:
              HubSpotSDK::Crm::PublicNowReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the type of reference (NOW).
          reference_type:,
          # The hour component of the current time reference.
          hour: nil,
          # The millisecond component of the current time reference.
          millisecond: nil,
          # The minute component of the current time reference.
          minute: nil,
          # The second component of the current time reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              reference_type:
                HubSpotSDK::Crm::PublicNowReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the type of reference (NOW).
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicNowReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOW =
            T.let(
              :NOW,
              HubSpotSDK::Crm::PublicNowReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicNowReference::ReferenceType::TaggedSymbol
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
