# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PropertyDefinitionSource < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PropertyDefinitionSource,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            type: HubSpotSDK::Cms::PropertyDefinitionSource::Type::OrSymbol,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(type:, name: nil)
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol,
              name: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PropertyDefinitionSource::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GLOBAL =
            T.let(
              :GLOBAL,
              HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          HAVEN_BRANCH =
            T.let(
              :HAVEN_BRANCH,
              HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          OBJECT_TYPE =
            T.let(
              :OBJECT_TYPE,
              HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
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
