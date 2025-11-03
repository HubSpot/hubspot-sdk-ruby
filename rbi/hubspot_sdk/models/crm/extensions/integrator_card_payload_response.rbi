# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class IntegratorCardPayloadResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The total number of card properties that will be sent in this response.
          sig { returns(Integer) }
          attr_accessor :total_count

          # URL to a page the integrator has built that displays all details for this card.
          # This URL will be displayed to users under a `See more [x]` link if there are
          # more than five items in your response, where `[x]` is the value of `itemLabel`.
          sig { returns(T.nilable(String)) }
          attr_reader :all_items_link_url

          sig { params(all_items_link_url: String).void }
          attr_writer :all_items_link_url

          # The label to be used for the `allItemsLinkUrl` link (e.g. 'See more tickets').
          # If not provided, this falls back to the card's title.
          sig { returns(T.nilable(String)) }
          attr_reader :card_label

          sig { params(card_label: String).void }
          attr_writer :card_label

          sig do
            returns(
              T.nilable(
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::TaggedSymbol
              )
            )
          end
          attr_reader :response_version

          sig do
            params(
              response_version:
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::OrSymbol
            ).void
          end
          attr_writer :response_version

          # A list of up to five valid card sub categories.
          sig do
            returns(
              T.nilable(
                T::Array[HubspotSDK::Crm::Extensions::IntegratorObjectResult]
              )
            )
          end
          attr_reader :sections

          sig do
            params(
              sections:
                T::Array[
                  HubspotSDK::Crm::Extensions::IntegratorObjectResult::OrHash
                ]
            ).void
          end
          attr_writer :sections

          sig do
            returns(T.nilable(HubspotSDK::Crm::Extensions::TopLevelActions))
          end
          attr_reader :top_level_actions

          sig do
            params(
              top_level_actions:
                HubspotSDK::Crm::Extensions::TopLevelActions::OrHash
            ).void
          end
          attr_writer :top_level_actions

          # The card details payload, sent to HubSpot by an app in response to a data fetch
          # request when a user visits a CRM record page.
          sig do
            params(
              total_count: Integer,
              all_items_link_url: String,
              card_label: String,
              response_version:
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::OrSymbol,
              sections:
                T::Array[
                  HubspotSDK::Crm::Extensions::IntegratorObjectResult::OrHash
                ],
              top_level_actions:
                HubspotSDK::Crm::Extensions::TopLevelActions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The total number of card properties that will be sent in this response.
            total_count:,
            # URL to a page the integrator has built that displays all details for this card.
            # This URL will be displayed to users under a `See more [x]` link if there are
            # more than five items in your response, where `[x]` is the value of `itemLabel`.
            all_items_link_url: nil,
            # The label to be used for the `allItemsLinkUrl` link (e.g. 'See more tickets').
            # If not provided, this falls back to the card's title.
            card_label: nil,
            response_version: nil,
            # A list of up to five valid card sub categories.
            sections: nil,
            top_level_actions: nil
          )
          end

          sig do
            override.returns(
              {
                total_count: Integer,
                all_items_link_url: String,
                card_label: String,
                response_version:
                  HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::TaggedSymbol,
                sections:
                  T::Array[HubspotSDK::Crm::Extensions::IntegratorObjectResult],
                top_level_actions: HubspotSDK::Crm::Extensions::TopLevelActions
              }
            )
          end
          def to_hash
          end

          module ResponseVersion
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            V1 =
              T.let(
                :v1,
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::TaggedSymbol
              )
            V3 =
              T.let(
                :v3,
                HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse::ResponseVersion::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
