# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :branch_value

        sig { returns(T.nilable(HubspotSDK::Automation::APIConnection)) }
        attr_reader :connection

        sig do
          params(connection: HubspotSDK::Automation::APIConnection::OrHash).void
        end
        attr_writer :connection

        sig do
          params(
            branch_value: String,
            connection: HubspotSDK::Automation::APIConnection::OrHash
          ).returns(T.attached_class)
        end
        def self.new(branch_value:, connection: nil)
        end

        sig do
          override.returns(
            {
              branch_value: String,
              connection: HubspotSDK::Automation::APIConnection
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
