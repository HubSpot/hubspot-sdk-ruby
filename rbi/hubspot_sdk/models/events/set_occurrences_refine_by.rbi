# typed: strong

module HubSpotSDK
  module Models
    module Events
      class SetOccurrencesRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::SetOccurrencesRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
          )
        end
        attr_accessor :set_type

        sig do
          returns(
            HubSpotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            set_type:
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::OrSymbol,
            type: HubSpotSDK::Events::SetOccurrencesRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(set_type:, type:)
        end

        sig do
          override.returns(
            {
              set_type:
                HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol,
              type:
                HubSpotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module SetType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::SetOccurrencesRefineBy::SetType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ALL_INCLUDE_EMPTY =
            T.let(
              :ALL_INCLUDE_EMPTY,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ANY =
            T.let(
              :ANY,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ANY_INCLUDE_EMPTY =
            T.let(
              :ANY_INCLUDE_EMPTY,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          NONE_EXCLUDE_EMPTY =
            T.let(
              :NONE_EXCLUDE_EMPTY,
              HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::SetOccurrencesRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SET_OCCURRENCES_REFINE_BY =
            T.let(
              :SetOccurrencesRefineBy,
              HubSpotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
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
