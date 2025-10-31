# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Transactional
        class SmtpTokenListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Transactional::SmtpTokenListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Starting point to get the next set of results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # A name for the campaign tied to the SMTP API token.
          sig { returns(T.nilable(String)) }
          attr_reader :campaign_name

          sig { params(campaign_name: String).void }
          attr_writer :campaign_name

          # Identifier assigned to the campaign provided during the token creation.
          sig { returns(T.nilable(String)) }
          attr_reader :email_campaign_id

          sig { params(email_campaign_id: String).void }
          attr_writer :email_campaign_id

          # Maximum number of tokens to return.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              after: String,
              campaign_name: String,
              email_campaign_id: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Starting point to get the next set of results.
            after: nil,
            # A name for the campaign tied to the SMTP API token.
            campaign_name: nil,
            # Identifier assigned to the campaign provided during the token creation.
            email_campaign_id: nil,
            # Maximum number of tokens to return.
            limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                campaign_name: String,
                email_campaign_id: String,
                limit: Integer,
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
