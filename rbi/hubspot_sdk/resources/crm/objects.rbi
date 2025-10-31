# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Objects
        sig { returns(HubspotSDK::Resources::CRM::Objects::Calls) }
        attr_reader :calls

        sig { returns(HubspotSDK::Resources::CRM::Objects::Carts) }
        attr_reader :carts

        sig { returns(HubspotSDK::Resources::CRM::Objects::CommercePayments) }
        attr_reader :commerce_payments

        sig { returns(HubspotSDK::Resources::CRM::Objects::Communications) }
        attr_reader :communications

        sig { returns(HubspotSDK::Resources::CRM::Objects::Companies) }
        attr_reader :companies

        sig { returns(HubspotSDK::Resources::CRM::Objects::Contacts) }
        attr_reader :contacts

        sig { returns(HubspotSDK::Resources::CRM::Objects::Contracts) }
        attr_reader :contracts

        sig { returns(HubspotSDK::Resources::CRM::Objects::Courses) }
        attr_reader :courses

        sig { returns(HubspotSDK::Resources::CRM::Objects::Custom) }
        attr_reader :custom

        sig { returns(HubspotSDK::Resources::CRM::Objects::DealSplits) }
        attr_reader :deal_splits

        sig { returns(HubspotSDK::Resources::CRM::Objects::Deals) }
        attr_reader :deals

        sig { returns(HubspotSDK::Resources::CRM::Objects::Discounts) }
        attr_reader :discounts

        sig { returns(HubspotSDK::Resources::CRM::Objects::Emails) }
        attr_reader :emails

        sig do
          returns(HubspotSDK::Resources::CRM::Objects::FeedbackSubmissions)
        end
        attr_reader :feedback_submissions

        sig { returns(HubspotSDK::Resources::CRM::Objects::Fees) }
        attr_reader :fees

        sig { returns(HubspotSDK::Resources::CRM::Objects::GoalTargets) }
        attr_reader :goal_targets

        sig { returns(HubspotSDK::Resources::CRM::Objects::Invoices) }
        attr_reader :invoices

        sig { returns(HubspotSDK::Resources::CRM::Objects::Leads) }
        attr_reader :leads

        sig { returns(HubspotSDK::Resources::CRM::Objects::LineItems) }
        attr_reader :line_items

        sig { returns(HubspotSDK::Resources::CRM::Objects::Listings) }
        attr_reader :listings

        sig { returns(HubspotSDK::Resources::CRM::Objects::Meetings) }
        attr_reader :meetings

        sig { returns(HubspotSDK::Resources::CRM::Objects::Notes) }
        attr_reader :notes

        sig { returns(HubspotSDK::Resources::CRM::Objects::Objects) }
        attr_reader :objects

        sig { returns(HubspotSDK::Resources::CRM::Objects::Orders) }
        attr_reader :orders

        sig { returns(HubspotSDK::Resources::CRM::Objects::PartnerClients) }
        attr_reader :partner_clients

        sig { returns(HubspotSDK::Resources::CRM::Objects::PartnerServices) }
        attr_reader :partner_services

        sig { returns(HubspotSDK::Resources::CRM::Objects::PostalMail) }
        attr_reader :postal_mail

        sig { returns(HubspotSDK::Resources::CRM::Objects::Products) }
        attr_reader :products

        sig { returns(HubspotSDK::Resources::CRM::Objects::Quotes) }
        attr_reader :quotes

        sig { returns(HubspotSDK::Resources::CRM::Objects::Schemas) }
        attr_reader :schemas

        sig { returns(HubspotSDK::Resources::CRM::Objects::Services) }
        attr_reader :services

        sig { returns(HubspotSDK::Resources::CRM::Objects::Tasks) }
        attr_reader :tasks

        sig { returns(HubspotSDK::Resources::CRM::Objects::Taxes) }
        attr_reader :taxes

        sig { returns(HubspotSDK::Resources::CRM::Objects::Tickets) }
        attr_reader :tickets

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
