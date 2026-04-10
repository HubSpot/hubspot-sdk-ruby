# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::IntegratorOEmbedDomainRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Cms::Endpoints) }
        attr_reader :endpoints

        sig { params(endpoints: HubSpotSDK::Cms::Endpoints::OrHash).void }
        attr_writer :endpoints

        sig { returns(T.nilable(Integer)) }
        attr_reader :portal_id

        sig { params(portal_id: Integer).void }
        attr_writer :portal_id

        sig do
          params(
            endpoints: HubSpotSDK::Cms::Endpoints::OrHash,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(endpoints:, portal_id: nil)
        end

        sig do
          override.returns(
            { endpoints: HubSpotSDK::Cms::Endpoints, portal_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
