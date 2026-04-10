# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ContactProfile < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ContactAddress>]
        required :addresses, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ContactAddress] }

        # @!attribute emails
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ContactEmail>]
        required :emails, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ContactEmail] }

        # @!attribute phones
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ContactPhone>]
        required :phones, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ContactPhone] }

        # @!attribute urls
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ContactURL>]
        required :urls, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ContactURL] }

        # @!attribute name
        #
        #   @return [HubSpotSDK::Models::Conversations::ContactName, nil]
        optional :name, -> { HubSpotSDK::Conversations::ContactName }

        # @!attribute org
        #
        #   @return [HubSpotSDK::Models::Conversations::ContactOrg, nil]
        optional :org, -> { HubSpotSDK::Conversations::ContactOrg }

        # @!method initialize(addresses:, emails:, phones:, urls:, name: nil, org: nil)
        #   @param addresses [Array<HubSpotSDK::Models::Conversations::ContactAddress>]
        #   @param emails [Array<HubSpotSDK::Models::Conversations::ContactEmail>]
        #   @param phones [Array<HubSpotSDK::Models::Conversations::ContactPhone>]
        #   @param urls [Array<HubSpotSDK::Models::Conversations::ContactURL>]
        #   @param name [HubSpotSDK::Models::Conversations::ContactName]
        #   @param org [HubSpotSDK::Models::Conversations::ContactOrg]
      end
    end
  end
end
