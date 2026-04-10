# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAllHistoryRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAllHistoryRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Type of refine by (ALL_HISTORY)
        sig do
          returns(HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            type: HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of refine by (ALL_HISTORY)
          type:
        )
        end

        sig do
          override.returns(
            { type: HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type::OrSymbol }
          )
        end
        def to_hash
        end

        # Type of refine by (ALL_HISTORY)
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_HISTORY =
            T.let(
              :ALL_HISTORY,
              HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::Type::TaggedSymbol
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
