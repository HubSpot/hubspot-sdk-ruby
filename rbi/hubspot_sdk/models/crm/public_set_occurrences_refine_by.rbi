# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
        # ANY, NONE, NONE_EXCLUDE_EMPTY, ANY_INCLUDE_EMPTY).
        sig { returns(String) }
        attr_accessor :set_type

        # Specifies the type of refinement (SET_OCCURRENCES).
        sig do
          returns(HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            set_type: String,
            type: HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the specific set type used in the refinement (ALL, ALL_INCLUDE_EMPTY,
          # ANY, NONE, NONE_EXCLUDE_EMPTY, ANY_INCLUDE_EMPTY).
          set_type:,
          # Specifies the type of refinement (SET_OCCURRENCES).
          type:
        )
        end

        sig do
          override.returns(
            {
              set_type: String,
              type:
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of refinement (SET_OCCURRENCES).
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SET_OCCURRENCES =
            T.let(
              :SET_OCCURRENCES,
              HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::Type::TaggedSymbol
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
