# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AppEventResolutionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AppEventResolutionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::DeveloperQualifiedSymbol) }
        attr_reader :developer_qualified_symbol

        sig do
          params(
            developer_qualified_symbol:
              HubSpotSDK::Crm::DeveloperQualifiedSymbol::OrHash
          ).void
        end
        attr_writer :developer_qualified_symbol

        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig do
          params(
            developer_qualified_symbol:
              HubSpotSDK::Crm::DeveloperQualifiedSymbol::OrHash,
            fully_qualified_name: String
          ).returns(T.attached_class)
        end
        def self.new(developer_qualified_symbol:, fully_qualified_name:)
        end

        sig do
          override.returns(
            {
              developer_qualified_symbol:
                HubSpotSDK::Crm::DeveloperQualifiedSymbol,
              fully_qualified_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
