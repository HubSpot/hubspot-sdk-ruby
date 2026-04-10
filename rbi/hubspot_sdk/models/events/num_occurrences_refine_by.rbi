# typed: strong

module HubSpotSDK
  module Models
    module Events
      class NumOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::NumOccurrencesRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::NumOccurrencesRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_occurrences

        sig { params(max_occurrences: Integer).void }
        attr_writer :max_occurrences

        sig { returns(T.nilable(Integer)) }
        attr_reader :min_occurrences

        sig { params(min_occurrences: Integer).void }
        attr_writer :min_occurrences

        sig do
          params(
            type: HubSpotSDK::Events::NumOccurrencesRefineBy::Type::OrSymbol,
            max_occurrences: Integer,
            min_occurrences: Integer
          ).returns(T.attached_class)
        end
        def self.new(type:, max_occurrences: nil, min_occurrences: nil)
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Events::NumOccurrencesRefineBy::Type::TaggedSymbol,
              max_occurrences: Integer,
              min_occurrences: Integer
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::NumOccurrencesRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUM_OCCURRENCES_REFINE_BY =
            T.let(
              :NumOccurrencesRefineBy,
              HubSpotSDK::Events::NumOccurrencesRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::NumOccurrencesRefineBy::Type::TaggedSymbol
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
