# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingCreateOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints
            )
          end
          attr_reader :endpoints

          sig do
            params(
              endpoints:
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints::OrHash
            ).void
          end
          attr_writer :endpoints

          sig { returns(T.nilable(Integer)) }
          attr_reader :portal_id

          sig { params(portal_id: Integer).void }
          attr_writer :portal_id

          sig do
            params(
              endpoints:
                HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints::OrHash,
              portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(endpoints:, portal_id: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                endpoints:
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints,
                portal_id: Integer,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Endpoints < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :discovery

            sig { returns(T::Array[String]) }
            attr_accessor :schemes

            sig { returns(String) }
            attr_accessor :url

            sig do
              params(
                discovery: T::Boolean,
                schemes: T::Array[String],
                url: String
              ).returns(T.attached_class)
            end
            def self.new(discovery:, schemes:, url:)
            end

            sig do
              override.returns(
                {
                  discovery: T::Boolean,
                  schemes: T::Array[String],
                  url: String
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
end
