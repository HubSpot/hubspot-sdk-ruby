# typed: strong

module HubspotSDK
  module Models
    module Events
      class SetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::SetOccurrencesRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
          )
        end
        attr_accessor :set_type

        sig do
          returns(
            HubspotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            set_type:
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::OrSymbol,
            type: HubspotSDK::Events::SetOccurrencesRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(set_type:, type:)
        end

        sig do
          override.returns(
            {
              set_type:
                HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol,
              type:
                HubspotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module SetType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::SetOccurrencesRefineBy::SetType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ALL_INCLUDE_EMPTY =
            T.let(
              :ALL_INCLUDE_EMPTY,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ANY =
            T.let(
              :ANY,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          ANY_INCLUDE_EMPTY =
            T.let(
              :ANY_INCLUDE_EMPTY,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )
          NONE_EXCLUDE_EMPTY =
            T.let(
              :NONE_EXCLUDE_EMPTY,
              HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::SetOccurrencesRefineBy::SetType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::SetOccurrencesRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SET_OCCURRENCES_REFINE_BY =
            T.let(
              :SetOccurrencesRefineBy,
              HubspotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::SetOccurrencesRefineBy::Type::TaggedSymbol
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
