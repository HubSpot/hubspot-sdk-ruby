# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingListOembedDomainsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingListOembedDomainsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Filter response by Hub ID.
          sig { returns(T.nilable(Integer)) }
          attr_reader :domain_portal_id

          sig { params(domain_portal_id: Integer).void }
          attr_writer :domain_portal_id

          sig do
            params(
              domain_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter response by Hub ID.
            domain_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                domain_portal_id: Integer,
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
