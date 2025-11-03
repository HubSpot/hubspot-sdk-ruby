# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        sig { returns(HubspotSDK::Resources::Crm::Objects::Calls) }
        attr_reader :calls

        sig { returns(HubspotSDK::Resources::Crm::Objects::Carts) }
        attr_reader :carts

        sig { returns(HubspotSDK::Resources::Crm::Objects::CommercePayments) }
        attr_reader :commerce_payments

        sig { returns(HubspotSDK::Resources::Crm::Objects::Communications) }
        attr_reader :communications

        sig { returns(HubspotSDK::Resources::Crm::Objects::Companies) }
        attr_reader :companies

        sig { returns(HubspotSDK::Resources::Crm::Objects::Contacts) }
        attr_reader :contacts

        sig { returns(HubspotSDK::Resources::Crm::Objects::Contracts) }
        attr_reader :contracts

        sig { returns(HubspotSDK::Resources::Crm::Objects::Courses) }
        attr_reader :courses

        sig { returns(HubspotSDK::Resources::Crm::Objects::Custom) }
        attr_reader :custom

        sig { returns(HubspotSDK::Resources::Crm::Objects::DealSplits) }
        attr_reader :deal_splits

        sig { returns(HubspotSDK::Resources::Crm::Objects::Deals) }
        attr_reader :deals

        sig { returns(HubspotSDK::Resources::Crm::Objects::Discounts) }
        attr_reader :discounts

        sig { returns(HubspotSDK::Resources::Crm::Objects::Emails) }
        attr_reader :emails

        sig do
          returns(HubspotSDK::Resources::Crm::Objects::FeedbackSubmissions)
        end
        attr_reader :feedback_submissions

        sig { returns(HubspotSDK::Resources::Crm::Objects::Fees) }
        attr_reader :fees

        sig { returns(HubspotSDK::Resources::Crm::Objects::GoalTargets) }
        attr_reader :goal_targets

        sig { returns(HubspotSDK::Resources::Crm::Objects::Invoices) }
        attr_reader :invoices

        sig { returns(HubspotSDK::Resources::Crm::Objects::Leads) }
        attr_reader :leads

        sig { returns(HubspotSDK::Resources::Crm::Objects::LineItems) }
        attr_reader :line_items

        sig { returns(HubspotSDK::Resources::Crm::Objects::Listings) }
        attr_reader :listings

        sig { returns(HubspotSDK::Resources::Crm::Objects::Meetings) }
        attr_reader :meetings

        sig { returns(HubspotSDK::Resources::Crm::Objects::Notes) }
        attr_reader :notes

        sig { returns(HubspotSDK::Resources::Crm::Objects::Objects) }
        attr_reader :objects

        sig { returns(HubspotSDK::Resources::Crm::Objects::Orders) }
        attr_reader :orders

        sig { returns(HubspotSDK::Resources::Crm::Objects::PartnerClients) }
        attr_reader :partner_clients

        sig { returns(HubspotSDK::Resources::Crm::Objects::PartnerServices) }
        attr_reader :partner_services

        sig { returns(HubspotSDK::Resources::Crm::Objects::PostalMail) }
        attr_reader :postal_mail

        sig { returns(HubspotSDK::Resources::Crm::Objects::Products) }
        attr_reader :products

        sig { returns(HubspotSDK::Resources::Crm::Objects::Quotes) }
        attr_reader :quotes

        sig { returns(HubspotSDK::Resources::Crm::Objects::Schemas) }
        attr_reader :schemas

        sig { returns(HubspotSDK::Resources::Crm::Objects::Services) }
        attr_reader :services

        sig { returns(HubspotSDK::Resources::Crm::Objects::Tasks) }
        attr_reader :tasks

        sig { returns(HubspotSDK::Resources::Crm::Objects::Taxes) }
        attr_reader :taxes

        sig { returns(HubspotSDK::Resources::Crm::Objects::Tickets) }
        attr_reader :tickets

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
