# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      module Webhooks
        class BatchGetParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Webhooks::Webhooks::BatchGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :install_portal_id

          sig { params(install_portal_id: Integer).void }
          attr_writer :install_portal_id

          sig do
            params(
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(install_portal_id: nil, request_options: {})
          end

          sig do
            override.returns(
              {
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
