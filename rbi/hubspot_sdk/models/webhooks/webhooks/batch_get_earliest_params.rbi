# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      module Webhooks
        class BatchGetEarliestParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Webhooks::Webhooks::BatchGetEarliestParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :count

          sig { returns(T.nilable(Integer)) }
          attr_reader :install_portal_id

          sig { params(install_portal_id: Integer).void }
          attr_writer :install_portal_id

          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(count:, install_portal_id: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                count: Integer,
                install_portal_id: Integer,
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
