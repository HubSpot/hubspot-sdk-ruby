# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingListOembedDomainsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result
              ]
            )
          end
          attr_accessor :results

          sig { returns(T.nilable(Integer)) }
          attr_reader :total_count

          sig { params(total_count: Integer).void }
          attr_writer :total_count

          sig do
            params(
              results:
                T::Array[
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::OrHash
                ],
              total_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(results:, total_count: nil)
          end

          sig do
            override.returns(
              {
                results:
                  T::Array[
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result
                  ],
                total_count: Integer
              }
            )
          end
          def to_hash
          end

          class Result < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :id

            sig { returns(Integer) }
            attr_accessor :app_id

            sig { returns(Integer) }
            attr_accessor :created_at

            sig { returns(Integer) }
            attr_accessor :deleted_at

            sig do
              returns(
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::Endpoints
              )
            end
            attr_reader :endpoints

            sig do
              params(
                endpoints:
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::Endpoints::OrHash
              ).void
            end
            attr_writer :endpoints

            sig { returns(Integer) }
            attr_accessor :portal_id

            sig { returns(Integer) }
            attr_accessor :updated_at

            sig do
              params(
                id: Integer,
                app_id: Integer,
                created_at: Integer,
                deleted_at: Integer,
                endpoints:
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::Endpoints::OrHash,
                portal_id: Integer,
                updated_at: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              app_id:,
              created_at:,
              deleted_at:,
              endpoints:,
              portal_id:,
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  app_id: Integer,
                  created_at: Integer,
                  deleted_at: Integer,
                  endpoints:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::Endpoints,
                  portal_id: Integer,
                  updated_at: Integer
                }
              )
            end
            def to_hash
            end

            class Endpoints < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result::Endpoints,
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
end
