# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CaseChangeTestExtensionData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CaseChangeTestExtensionData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
          )
        end
        attr_accessor :mood

        sig do
          params(
            mood: HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(mood:)
        end

        sig do
          override.returns(
            {
              mood:
                HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Mood
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::CaseChangeTestExtensionData::Mood)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANGRY =
            T.let(
              :ANGRY,
              HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          HAPPY =
            T.let(
              :HAPPY,
              HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          SAD =
            T.let(
              :SAD,
              HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          SARCASTIC =
            T.let(
              :SARCASTIC,
              HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
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
