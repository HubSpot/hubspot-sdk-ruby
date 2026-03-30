# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class UserDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::UserDeleteParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :user_id

          sig do
            params(
              user_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(user_id:, request_options: {})
          end

          sig do
            override.returns(
              { user_id: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
