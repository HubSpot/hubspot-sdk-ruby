# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::IntegratorOEmbedDomainRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::Endpoints) }
        attr_reader :endpoints

        sig { params(endpoints: HubspotSDK::Cms::Endpoints::OrHash).void }
        attr_writer :endpoints

        sig { returns(T.nilable(Integer)) }
        attr_reader :portal_id

        sig { params(portal_id: Integer).void }
        attr_writer :portal_id

        sig do
          params(
            endpoints: HubspotSDK::Cms::Endpoints::OrHash,
            portal_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(endpoints:, portal_id: nil)
        end

        sig do
          override.returns(
            { endpoints: HubspotSDK::Cms::Endpoints, portal_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
