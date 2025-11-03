# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Lists
        class MembershipRemoveParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Lists::MembershipRemoveParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :body

          sig do
            params(
              body: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(body:, request_options: {})
          end

          sig do
            override.returns(
              {
                body: T::Array[String],
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
