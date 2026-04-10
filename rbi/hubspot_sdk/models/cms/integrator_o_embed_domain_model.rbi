# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainModel < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::IntegratorOEmbedDomainModel,
              HubSpotSDK::Internal::AnyHash
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

        sig { returns(HubSpotSDK::Cms::Endpoints) }
        attr_reader :endpoints

        sig { params(endpoints: HubSpotSDK::Cms::Endpoints::OrHash).void }
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
            endpoints: HubSpotSDK::Cms::Endpoints::OrHash,
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
              endpoints: HubSpotSDK::Cms::Endpoints,
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
