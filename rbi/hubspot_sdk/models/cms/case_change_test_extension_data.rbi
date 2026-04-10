# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CaseChangeTestExtensionData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CaseChangeTestExtensionData,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
          )
        end
        attr_accessor :mood

        sig do
          params(
            mood: HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(mood:)
        end

        sig do
          override.returns(
            {
              mood:
                HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Mood
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANGRY =
            T.let(
              :ANGRY,
              HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          HAPPY =
            T.let(
              :HAPPY,
              HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          SAD =
            T.let(
              :SAD,
              HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )
          SARCASTIC =
            T.let(
              :SARCASTIC,
              HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood::TaggedSymbol
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
