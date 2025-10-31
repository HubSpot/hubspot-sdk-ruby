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

        sig { returns(String) }
        attr_accessor :mood

        sig { params(mood: String).returns(T.attached_class) }
        def self.new(mood:)
        end

        sig { override.returns({ mood: String }) }
        def to_hash
        end
      end
    end
  end
end
