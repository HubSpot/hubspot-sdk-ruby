# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactProfile < HubspotSDK::Internal::Type::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ContactAddress>]
        required :addresses, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ContactAddress] }

        # @!attribute emails
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ContactEmail>]
        required :emails, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ContactEmail] }

        # @!attribute phones
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ContactPhone>]
        required :phones, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ContactPhone] }

        # @!attribute urls
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ContactURL>]
        required :urls, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ContactURL] }

        # @!attribute name
        #
        #   @return [HubspotSDK::Models::Conversations::ContactName, nil]
        optional :name, -> { HubspotSDK::Conversations::ContactName }

        # @!attribute org
        #
        #   @return [HubspotSDK::Models::Conversations::ContactOrg, nil]
        optional :org, -> { HubspotSDK::Conversations::ContactOrg }

        # @!method initialize(addresses:, emails:, phones:, urls:, name: nil, org: nil)
        #   @param addresses [Array<HubspotSDK::Models::Conversations::ContactAddress>]
        #   @param emails [Array<HubspotSDK::Models::Conversations::ContactEmail>]
        #   @param phones [Array<HubspotSDK::Models::Conversations::ContactPhone>]
        #   @param urls [Array<HubspotSDK::Models::Conversations::ContactURL>]
        #   @param name [HubspotSDK::Models::Conversations::ContactName]
        #   @param org [HubspotSDK::Models::Conversations::ContactOrg]
      end
    end
  end
end
