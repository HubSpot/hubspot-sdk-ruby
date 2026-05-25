# typed: strong

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Journal
        class BatchGetParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::WebhooksJournal::Journal::BatchGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # An integer representing the ID of the portal installation for which the webhooks
          # journal data should be retrieved.
          sig { returns(T.nilable(Integer)) }
          attr_reader :install_portal_id

          sig { params(install_portal_id: Integer).void }
          attr_writer :install_portal_id

          sig do
            params(
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An integer representing the ID of the portal installation for which the webhooks
            # journal data should be retrieved.
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                install_portal_id: Integer,
                request_options: HubSpotSDK::RequestOptions
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
