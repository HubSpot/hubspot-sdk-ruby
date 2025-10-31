# typed: strong

module HubspotSDK
  module Models
    module Events
      class AllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::AllHistoryRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Events::AllHistoryRefineBy::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            type: HubspotSDK::Events::AllHistoryRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            { type: HubspotSDK::Events::AllHistoryRefineBy::Type::TaggedSymbol }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::AllHistoryRefineBy::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL_HISTORY_REFINE_BY =
            T.let(
              :AllHistoryRefineBy,
              HubspotSDK::Events::AllHistoryRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AllHistoryRefineBy::Type::TaggedSymbol
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
