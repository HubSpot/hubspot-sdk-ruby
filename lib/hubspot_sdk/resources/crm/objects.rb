# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        # @return [HubspotSDK::Resources::CRM::Objects::Appointments]
        attr_reader :appointments

        # @return [HubspotSDK::Resources::CRM::Objects::Calls]
        attr_reader :calls

        # @return [HubspotSDK::Resources::CRM::Objects::Carts]
        attr_reader :carts

        # @return [HubspotSDK::Resources::CRM::Objects::CommercePayments]
        attr_reader :commerce_payments

        # @return [HubspotSDK::Resources::CRM::Objects::Communications]
        attr_reader :communications

        # @return [HubspotSDK::Resources::CRM::Objects::Companies]
        attr_reader :companies

        # @return [HubspotSDK::Resources::CRM::Objects::Contacts]
        attr_reader :contacts

        # @return [HubspotSDK::Resources::CRM::Objects::Contracts]
        attr_reader :contracts

        # @return [HubspotSDK::Resources::CRM::Objects::Courses]
        attr_reader :courses

        # @return [HubspotSDK::Resources::CRM::Objects::Custom]
        attr_reader :custom

        # @return [HubspotSDK::Resources::CRM::Objects::DealSplits]
        attr_reader :deal_splits

        # @return [HubspotSDK::Resources::CRM::Objects::Deals]
        attr_reader :deals

        # @return [HubspotSDK::Resources::CRM::Objects::Discounts]
        attr_reader :discounts

        # @return [HubspotSDK::Resources::CRM::Objects::Emails]
        attr_reader :emails

        # @return [HubspotSDK::Resources::CRM::Objects::FeedbackSubmissions]
        attr_reader :feedback_submissions

        # @return [HubspotSDK::Resources::CRM::Objects::Fees]
        attr_reader :fees

        # @return [HubspotSDK::Resources::CRM::Objects::GoalTargets]
        attr_reader :goal_targets

        # @return [HubspotSDK::Resources::CRM::Objects::Invoices]
        attr_reader :invoices

        # @return [HubspotSDK::Resources::CRM::Objects::Leads]
        attr_reader :leads

        # @return [HubspotSDK::Resources::CRM::Objects::LineItems]
        attr_reader :line_items

        # @return [HubspotSDK::Resources::CRM::Objects::Listings]
        attr_reader :listings

        # @return [HubspotSDK::Resources::CRM::Objects::Meetings]
        attr_reader :meetings

        # @return [HubspotSDK::Resources::CRM::Objects::Notes]
        attr_reader :notes

        # @return [HubspotSDK::Resources::CRM::Objects::Objects]
        attr_reader :objects

        # @return [HubspotSDK::Resources::CRM::Objects::Orders]
        attr_reader :orders

        # @return [HubspotSDK::Resources::CRM::Objects::PartnerClients]
        attr_reader :partner_clients

        # @return [HubspotSDK::Resources::CRM::Objects::PartnerServices]
        attr_reader :partner_services

        # @return [HubspotSDK::Resources::CRM::Objects::PostalMail]
        attr_reader :postal_mail

        # @return [HubspotSDK::Resources::CRM::Objects::Products]
        attr_reader :products

        # @return [HubspotSDK::Resources::CRM::Objects::Quotes]
        attr_reader :quotes

        # @return [HubspotSDK::Resources::CRM::Objects::Schemas]
        attr_reader :schemas

        # @return [HubspotSDK::Resources::CRM::Objects::Services]
        attr_reader :services

        # @return [HubspotSDK::Resources::CRM::Objects::Tasks]
        attr_reader :tasks

        # @return [HubspotSDK::Resources::CRM::Objects::Taxes]
        attr_reader :taxes

        # @return [HubspotSDK::Resources::CRM::Objects::Tickets]
        attr_reader :tickets

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @appointments = HubspotSDK::Resources::CRM::Objects::Appointments.new(client: client)
          @calls = HubspotSDK::Resources::CRM::Objects::Calls.new(client: client)
          @carts = HubspotSDK::Resources::CRM::Objects::Carts.new(client: client)
          @commerce_payments = HubspotSDK::Resources::CRM::Objects::CommercePayments.new(client: client)
          @communications = HubspotSDK::Resources::CRM::Objects::Communications.new(client: client)
          @companies = HubspotSDK::Resources::CRM::Objects::Companies.new(client: client)
          @contacts = HubspotSDK::Resources::CRM::Objects::Contacts.new(client: client)
          @contracts = HubspotSDK::Resources::CRM::Objects::Contracts.new(client: client)
          @courses = HubspotSDK::Resources::CRM::Objects::Courses.new(client: client)
          @custom = HubspotSDK::Resources::CRM::Objects::Custom.new(client: client)
          @deal_splits = HubspotSDK::Resources::CRM::Objects::DealSplits.new(client: client)
          @deals = HubspotSDK::Resources::CRM::Objects::Deals.new(client: client)
          @discounts = HubspotSDK::Resources::CRM::Objects::Discounts.new(client: client)
          @emails = HubspotSDK::Resources::CRM::Objects::Emails.new(client: client)
          @feedback_submissions = HubspotSDK::Resources::CRM::Objects::FeedbackSubmissions.new(client: client)
          @fees = HubspotSDK::Resources::CRM::Objects::Fees.new(client: client)
          @goal_targets = HubspotSDK::Resources::CRM::Objects::GoalTargets.new(client: client)
          @invoices = HubspotSDK::Resources::CRM::Objects::Invoices.new(client: client)
          @leads = HubspotSDK::Resources::CRM::Objects::Leads.new(client: client)
          @line_items = HubspotSDK::Resources::CRM::Objects::LineItems.new(client: client)
          @listings = HubspotSDK::Resources::CRM::Objects::Listings.new(client: client)
          @meetings = HubspotSDK::Resources::CRM::Objects::Meetings.new(client: client)
          @notes = HubspotSDK::Resources::CRM::Objects::Notes.new(client: client)
          @objects = HubspotSDK::Resources::CRM::Objects::Objects.new(client: client)
          @orders = HubspotSDK::Resources::CRM::Objects::Orders.new(client: client)
          @partner_clients = HubspotSDK::Resources::CRM::Objects::PartnerClients.new(client: client)
          @partner_services = HubspotSDK::Resources::CRM::Objects::PartnerServices.new(client: client)
          @postal_mail = HubspotSDK::Resources::CRM::Objects::PostalMail.new(client: client)
          @products = HubspotSDK::Resources::CRM::Objects::Products.new(client: client)
          @quotes = HubspotSDK::Resources::CRM::Objects::Quotes.new(client: client)
          @schemas = HubspotSDK::Resources::CRM::Objects::Schemas.new(client: client)
          @services = HubspotSDK::Resources::CRM::Objects::Services.new(client: client)
          @tasks = HubspotSDK::Resources::CRM::Objects::Tasks.new(client: client)
          @taxes = HubspotSDK::Resources::CRM::Objects::Taxes.new(client: client)
          @tickets = HubspotSDK::Resources::CRM::Objects::Tickets.new(client: client)
        end
      end
    end
  end
end
