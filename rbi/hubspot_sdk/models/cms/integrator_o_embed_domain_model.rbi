# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainModel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::IntegratorOEmbedDomainModel,
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

        sig { returns(HubspotSDK::Cms::Endpoints) }
        attr_reader :endpoints

        sig { params(endpoints: HubspotSDK::Cms::Endpoints::OrHash).void }
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
            endpoints: HubspotSDK::Cms::Endpoints::OrHash,
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
              endpoints: HubspotSDK::Cms::Endpoints,
              portal_id: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
