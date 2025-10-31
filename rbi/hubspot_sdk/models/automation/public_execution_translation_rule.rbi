# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicExecutionTranslationRule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicExecutionTranslationRule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :conditions

        sig { returns(String) }
        attr_accessor :label_name

        sig do
          params(
            conditions: T::Hash[Symbol, T.anything],
            label_name: String
          ).returns(T.attached_class)
        end
        def self.new(conditions:, label_name:)
        end

        sig do
          override.returns(
            { conditions: T::Hash[Symbol, T.anything], label_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
