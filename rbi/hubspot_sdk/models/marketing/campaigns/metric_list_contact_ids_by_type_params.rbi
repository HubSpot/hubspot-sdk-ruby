# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class MetricListContactIDsByTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::MetricListContactIDsByTypeParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(String) }
          attr_accessor :contact_type

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig do
            params(
              campaign_guid: String,
              contact_type: String,
              after: String,
              end_date: String,
              limit: Integer,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            campaign_guid:,
            contact_type:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            end_date: nil,
            # The maximum number of results to display per page.
            limit: nil,
            start_date: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
                contact_type: String,
                after: String,
                end_date: String,
                limit: Integer,
                start_date: String,
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
