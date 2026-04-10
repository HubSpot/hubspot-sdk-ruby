# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicNumOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of refinement (NUM_OCCURRENCES).
        sig do
          returns(HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type::OrSymbol)
        end
        attr_accessor :type

        # The maximum number of occurrences allowed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_occurrences

        sig { params(max_occurrences: Integer).void }
        attr_writer :max_occurrences

        # The minimum number of occurrences required.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_occurrences

        sig { params(min_occurrences: Integer).void }
        attr_writer :min_occurrences

        sig do
          params(
            type: HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type::OrSymbol,
            max_occurrences: Integer,
            min_occurrences: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of refinement (NUM_OCCURRENCES).
          type:,
          # The maximum number of occurrences allowed.
          max_occurrences: nil,
          # The minimum number of occurrences required.
          min_occurrences: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type::OrSymbol,
              max_occurrences: Integer,
              min_occurrences: Integer
            }
          )
        end
        def to_hash
        end

        # The type of refinement (NUM_OCCURRENCES).
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUM_OCCURRENCES =
            T.let(
              :NUM_OCCURRENCES,
              HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::Type::TaggedSymbol
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
