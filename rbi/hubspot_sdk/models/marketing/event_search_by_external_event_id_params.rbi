# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EventSearchByExternalEventIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EventSearchByExternalEventIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The id of the marketing event in the external event application
        # (externalEventId)
        sig { returns(String) }
        attr_accessor :q

        sig do
          params(
            q: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the marketing event in the external event application
          # (externalEventId)
          q:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { q: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
