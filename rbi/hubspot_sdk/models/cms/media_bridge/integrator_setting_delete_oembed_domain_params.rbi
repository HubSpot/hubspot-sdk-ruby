# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingDeleteOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingDeleteOembedDomainParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The ID of the oEmbed to delete.
          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          # Filter response by Hub ID.
          sig { returns(T.nilable(Integer)) }
          attr_reader :domain_portal_id

          sig { params(domain_portal_id: Integer).void }
          attr_writer :domain_portal_id

          sig do
            params(
              id: Integer,
              domain_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the oEmbed to delete.
            id: nil,
            # Filter response by Hub ID.
            domain_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
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
