# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        sig { returns(HubSpotSDK::Resources::Crm::Objects::Calls) }
        attr_reader :calls

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Carts) }
        attr_reader :carts

        sig { returns(HubSpotSDK::Resources::Crm::Objects::CommercePayments) }
        attr_reader :commerce_payments

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Communications) }
        attr_reader :communications

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Companies) }
        attr_reader :companies

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Contacts) }
        attr_reader :contacts

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Contracts) }
        attr_reader :contracts

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Courses) }
        attr_reader :courses

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Custom) }
        attr_reader :custom

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Deals) }
        attr_reader :deals

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Discounts) }
        attr_reader :discounts

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Emails) }
        attr_reader :emails

        sig do
          returns(HubSpotSDK::Resources::Crm::Objects::FeedbackSubmissions)
        end
        attr_reader :feedback_submissions

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Fees) }
        attr_reader :fees

        sig { returns(HubSpotSDK::Resources::Crm::Objects::GenericObjects) }
        attr_reader :generic_objects

        sig { returns(HubSpotSDK::Resources::Crm::Objects::GoalTargets) }
        attr_reader :goal_targets

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Invoices) }
        attr_reader :invoices

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Leads) }
        attr_reader :leads

        sig { returns(HubSpotSDK::Resources::Crm::Objects::LineItems) }
        attr_reader :line_items

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Listings) }
        attr_reader :listings

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Meetings) }
        attr_reader :meetings

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Notes) }
        attr_reader :notes

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Orders) }
        attr_reader :orders

        sig { returns(HubSpotSDK::Resources::Crm::Objects::PartnerClients) }
        attr_reader :partner_clients

        sig { returns(HubSpotSDK::Resources::Crm::Objects::PartnerServices) }
        attr_reader :partner_services

        sig { returns(HubSpotSDK::Resources::Crm::Objects::PostalMail) }
        attr_reader :postal_mail

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Products) }
        attr_reader :products

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Projects) }
        attr_reader :projects

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Quotes) }
        attr_reader :quotes

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Services) }
        attr_reader :services

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Subscriptions) }
        attr_reader :subscriptions

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Tasks) }
        attr_reader :tasks

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Taxes) }
        attr_reader :taxes

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Tickets) }
        attr_reader :tickets

        sig { returns(HubSpotSDK::Resources::Crm::Objects::Users) }
        attr_reader :users

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
