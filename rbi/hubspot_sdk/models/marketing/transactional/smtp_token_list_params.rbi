# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module Transactional
        class SmtpTokenListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::Transactional::SmtpTokenListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(String)) }
          attr_reader :campaign_name

          sig { params(campaign_name: String).void }
          attr_writer :campaign_name

          sig { returns(T.nilable(String)) }
          attr_reader :email_campaign_id

          sig { params(email_campaign_id: String).void }
          attr_writer :email_campaign_id

          # The maximum number of results to display per page.
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            campaign_name: nil,
            email_campaign_id: nil,
            # The maximum number of results to display per page.
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
