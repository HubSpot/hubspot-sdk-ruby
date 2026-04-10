# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ExternalAppEventResolutionRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ExternalAppEventResolutionRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :developer_symbol

        sig { returns(String) }
        attr_accessor :project_name

        sig do
          params(developer_symbol: String, project_name: String).returns(
            T.attached_class
          )
        end
        def self.new(developer_symbol:, project_name:)
        end

        sig do
          override.returns({ developer_symbol: String, project_name: String })
        end
        def to_hash
        end
      end
    end
  end
end
