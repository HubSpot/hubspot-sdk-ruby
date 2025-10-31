# typed: strong

module HubspotSDK
  module Models
    module Cms
      class OptionDecoratorsExtensionData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::OptionDecoratorsExtensionData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations]) }
        attr_accessor :option_decorators

        sig { returns(String) }
        attr_accessor :option_decorator_style

        sig do
          params(
            option_decorators:
              T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations::OrHash],
            option_decorator_style: String
          ).returns(T.attached_class)
        end
        def self.new(option_decorators:, option_decorator_style:)
        end

        sig do
          override.returns(
            {
              option_decorators:
                T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations],
              option_decorator_style: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
