# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ExtensionData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::ExtensionData, HubSpotSDK::Internal::AnyHash)
          end

        sig do
          returns(
            T::Hash[
              Symbol,
              HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
            ]
          )
        end
        attr_accessor :extension_status_map

        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig { returns(T.nilable(HubSpotSDK::Cms::CaseChangeTestExtensionData)) }
        attr_reader :case_change_test_extension_data

        sig do
          params(
            case_change_test_extension_data:
              HubSpotSDK::Cms::CaseChangeTestExtensionData::OrHash
          ).void
        end
        attr_writer :case_change_test_extension_data

        sig do
          returns(T.nilable(HubSpotSDK::Cms::OptionDecoratorsExtensionData))
        end
        attr_reader :option_decorators_extension_data

        sig do
          params(
            option_decorators_extension_data:
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OrHash
          ).void
        end
        attr_writer :option_decorators_extension_data

        sig do
          returns(T.nilable(HubSpotSDK::Cms::RequiredPropertiesExtensionData))
        end
        attr_reader :required_properties_extension_data

        sig do
          params(
            required_properties_extension_data:
              HubSpotSDK::Cms::RequiredPropertiesExtensionData::OrHash
          ).void
        end
        attr_writer :required_properties_extension_data

        sig do
          returns(
            T.nilable(HubSpotSDK::Cms::SoftRequiredPropertiesExtensionData)
          )
        end
        attr_reader :soft_required_properties_extension_data

        sig do
          params(
            soft_required_properties_extension_data:
              HubSpotSDK::Cms::SoftRequiredPropertiesExtensionData::OrHash
          ).void
        end
        attr_writer :soft_required_properties_extension_data

        sig do
          params(
            extension_status_map:
              T::Hash[
                Symbol,
                HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::OrSymbol
              ],
            tags: T::Array[String],
            case_change_test_extension_data:
              HubSpotSDK::Cms::CaseChangeTestExtensionData::OrHash,
            option_decorators_extension_data:
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OrHash,
            required_properties_extension_data:
              HubSpotSDK::Cms::RequiredPropertiesExtensionData::OrHash,
            soft_required_properties_extension_data:
              HubSpotSDK::Cms::SoftRequiredPropertiesExtensionData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          extension_status_map:,
          tags:,
          case_change_test_extension_data: nil,
          option_decorators_extension_data: nil,
          required_properties_extension_data: nil,
          soft_required_properties_extension_data: nil
        )
        end

        sig do
          override.returns(
            {
              extension_status_map:
                T::Hash[
                  Symbol,
                  HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
                ],
              tags: T::Array[String],
              case_change_test_extension_data:
                HubSpotSDK::Cms::CaseChangeTestExtensionData,
              option_decorators_extension_data:
                HubSpotSDK::Cms::OptionDecoratorsExtensionData,
              required_properties_extension_data:
                HubSpotSDK::Cms::RequiredPropertiesExtensionData,
              soft_required_properties_extension_data:
                HubSpotSDK::Cms::SoftRequiredPropertiesExtensionData
            }
          )
        end
        def to_hash
        end

        module ExtensionStatusMap
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OK =
            T.let(
              :OK,
              HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :TIMEOUT,
              HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::ExtensionData::ExtensionStatusMap::TaggedSymbol
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
