# typed: strong

module HubspotSDK
  module Models
    module Cms
      class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::DefinitionSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            type: HubspotSDK::Cms::DefinitionSource::Type::OrSymbol,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(type:, name: nil)
        end

        sig do
          override.returns(
            {
              type: HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol,
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
              T.all(Symbol, HubspotSDK::Cms::DefinitionSource::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GLOBAL =
            T.let(
              :GLOBAL,
              HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol
            )
          HAVEN_BRANCH =
            T.let(
              :HAVEN_BRANCH,
              HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol
            )
          OBJECT_TYPE =
            T.let(
              :OBJECT_TYPE,
              HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::DefinitionSource::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
