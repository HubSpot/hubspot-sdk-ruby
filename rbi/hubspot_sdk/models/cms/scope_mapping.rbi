# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ScopeMapping, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :access_level

        sig { returns(String) }
        attr_accessor :request_action

        sig { returns(String) }
        attr_accessor :scope_name

        sig do
          params(
            access_level: String,
            request_action: String,
            scope_name: String
          ).returns(T.attached_class)
        end
        def self.new(access_level:, request_action:, scope_name:)
        end

        sig do
          override.returns(
            { access_level: String, request_action: String, scope_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
