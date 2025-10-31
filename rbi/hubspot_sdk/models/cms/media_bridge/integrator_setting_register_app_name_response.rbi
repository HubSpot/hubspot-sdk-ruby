# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingRegisterAppNameResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :name

          sig do
            params(app_id: Integer, name: String).returns(T.attached_class)
          end
          def self.new(app_id:, name:)
          end

          sig { override.returns({ app_id: Integer, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
