# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class ListAssociations
          # Gets lists associated with a marketing event by marketing event id
          sig do
            params(
              marketing_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::CollectionResponseWithTotalPublicList
            )
          end
          def list(
            # The internal id of the marketing event in HubSpot.
            marketing_event_id,
            request_options: {}
          )
          end

          # Disassociates a list from a marketing event by marketing event id and ILS list
          # id
          sig do
            params(
              list_id: String,
              marketing_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ILS ID of the list.
            list_id,
            # The internal id of the marketing event in HubSpot.
            marketing_event_id:,
            request_options: {}
          )
          end

          # Associates a list with a marketing event by marketing event id and ILS list id
          sig do
            params(
              list_id: String,
              marketing_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def associate(
            # The ILS ID of the list.
            list_id,
            # The internal id of the marketing event in HubSpot.
            marketing_event_id:,
            request_options: {}
          )
          end

          # Associates a list with a marketing event by external account id, external event
          # id, and ILS list id
          sig do
            params(
              list_id: String,
              external_account_id: String,
              external_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def associate_by_external_account(
            # The ILS ID of the list.
            list_id,
            # The accountId that is associated with this marketing event in the external event
            # application.
            external_account_id:,
            # The id of the marketing event in the external event application.
            external_event_id:,
            request_options: {}
          )
          end

          # Disassociates a list from a marketing event by external account id, external
          # event id, and ILS list id
          sig do
            params(
              list_id: String,
              external_account_id: String,
              external_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_by_external_account(
            # The ILS ID of the list.
            list_id,
            # The accountId that is associated with this marketing event in the external event
            # application.
            external_account_id:,
            # The id of the marketing event in the external event application.
            external_event_id:,
            request_options: {}
          )
          end

          # Gets lists associated with a marketing event by external account id and external
          # event id
          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::CollectionResponseWithTotalPublicList
            )
          end
          def list_by_external_account(
            # The id of the marketing event in the external event application.
            external_event_id,
            # The accountId that is associated with this marketing event in the external event
            # application.
            external_account_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
