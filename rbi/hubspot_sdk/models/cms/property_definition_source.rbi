# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PropertyDefinitionSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PropertyDefinitionSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            type: HubspotSDK::Cms::PropertyDefinitionSource::Type::OrSymbol,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(type:, name: nil)
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol,
              name: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::PropertyDefinitionSource::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GLOBAL =
            T.let(
              :GLOBAL,
              HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          OBJECT_TYPE =
            T.let(
              :OBJECT_TYPE,
              HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          HAVEN_BRANCH =
            T.let(
              :HAVEN_BRANCH,
              HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::PropertyDefinitionSource::Type::TaggedSymbol
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
