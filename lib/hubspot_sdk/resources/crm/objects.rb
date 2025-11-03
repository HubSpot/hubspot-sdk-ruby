# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        # @return [HubspotSDK::Resources::Crm::Objects::Appointments]
        attr_reader :appointments

        # @return [HubspotSDK::Resources::Crm::Objects::Calls]
        attr_reader :calls

        # @return [HubspotSDK::Resources::Crm::Objects::Carts]
        attr_reader :carts

        # @return [HubspotSDK::Resources::Crm::Objects::CommercePayments]
        attr_reader :commerce_payments

        # @return [HubspotSDK::Resources::Crm::Objects::Communications]
        attr_reader :communications

        # @return [HubspotSDK::Resources::Crm::Objects::Companies]
        attr_reader :companies

        # @return [HubspotSDK::Resources::Crm::Objects::Contacts]
        attr_reader :contacts

        # @return [HubspotSDK::Resources::Crm::Objects::Contracts]
        attr_reader :contracts

        # @return [HubspotSDK::Resources::Crm::Objects::Courses]
        attr_reader :courses

        # @return [HubspotSDK::Resources::Crm::Objects::Custom]
        attr_reader :custom

        # @return [HubspotSDK::Resources::Crm::Objects::DealSplits]
        attr_reader :deal_splits

        # @return [HubspotSDK::Resources::Crm::Objects::Deals]
        attr_reader :deals

        # @return [HubspotSDK::Resources::Crm::Objects::Discounts]
        attr_reader :discounts

        # @return [HubspotSDK::Resources::Crm::Objects::Emails]
        attr_reader :emails

        # @return [HubspotSDK::Resources::Crm::Objects::FeedbackSubmissions]
        attr_reader :feedback_submissions

        # @return [HubspotSDK::Resources::Crm::Objects::Fees]
        attr_reader :fees

        # @return [HubspotSDK::Resources::Crm::Objects::GoalTargets]
        attr_reader :goal_targets

        # @return [HubspotSDK::Resources::Crm::Objects::Invoices]
        attr_reader :invoices

        # @return [HubspotSDK::Resources::Crm::Objects::Leads]
        attr_reader :leads

        # @return [HubspotSDK::Resources::Crm::Objects::LineItems]
        attr_reader :line_items

        # @return [HubspotSDK::Resources::Crm::Objects::Listings]
        attr_reader :listings

        # @return [HubspotSDK::Resources::Crm::Objects::Meetings]
        attr_reader :meetings

        # @return [HubspotSDK::Resources::Crm::Objects::Notes]
        attr_reader :notes

        # @return [HubspotSDK::Resources::Crm::Objects::Objects]
        attr_reader :objects

        # @return [HubspotSDK::Resources::Crm::Objects::Orders]
        attr_reader :orders

        # @return [HubspotSDK::Resources::Crm::Objects::PartnerClients]
        attr_reader :partner_clients

        # @return [HubspotSDK::Resources::Crm::Objects::PartnerServices]
        attr_reader :partner_services

        # @return [HubspotSDK::Resources::Crm::Objects::PostalMail]
        attr_reader :postal_mail

        # @return [HubspotSDK::Resources::Crm::Objects::Products]
        attr_reader :products

        # @return [HubspotSDK::Resources::Crm::Objects::Quotes]
        attr_reader :quotes

        # @return [HubspotSDK::Resources::Crm::Objects::Schemas]
        attr_reader :schemas

        # @return [HubspotSDK::Resources::Crm::Objects::Services]
        attr_reader :services

        # @return [HubspotSDK::Resources::Crm::Objects::Tasks]
        attr_reader :tasks

        # @return [HubspotSDK::Resources::Crm::Objects::Taxes]
        attr_reader :taxes

        # @return [HubspotSDK::Resources::Crm::Objects::Tickets]
        attr_reader :tickets

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @appointments = HubspotSDK::Resources::Crm::Objects::Appointments.new(client: client)
          @calls = HubspotSDK::Resources::Crm::Objects::Calls.new(client: client)
          @carts = HubspotSDK::Resources::Crm::Objects::Carts.new(client: client)
          @commerce_payments = HubspotSDK::Resources::Crm::Objects::CommercePayments.new(client: client)
          @communications = HubspotSDK::Resources::Crm::Objects::Communications.new(client: client)
          @companies = HubspotSDK::Resources::Crm::Objects::Companies.new(client: client)
          @contacts = HubspotSDK::Resources::Crm::Objects::Contacts.new(client: client)
          @contracts = HubspotSDK::Resources::Crm::Objects::Contracts.new(client: client)
          @courses = HubspotSDK::Resources::Crm::Objects::Courses.new(client: client)
          @custom = HubspotSDK::Resources::Crm::Objects::Custom.new(client: client)
          @deal_splits = HubspotSDK::Resources::Crm::Objects::DealSplits.new(client: client)
          @deals = HubspotSDK::Resources::Crm::Objects::Deals.new(client: client)
          @discounts = HubspotSDK::Resources::Crm::Objects::Discounts.new(client: client)
          @emails = HubspotSDK::Resources::Crm::Objects::Emails.new(client: client)
          @feedback_submissions = HubspotSDK::Resources::Crm::Objects::FeedbackSubmissions.new(client: client)
          @fees = HubspotSDK::Resources::Crm::Objects::Fees.new(client: client)
          @goal_targets = HubspotSDK::Resources::Crm::Objects::GoalTargets.new(client: client)
          @invoices = HubspotSDK::Resources::Crm::Objects::Invoices.new(client: client)
          @leads = HubspotSDK::Resources::Crm::Objects::Leads.new(client: client)
          @line_items = HubspotSDK::Resources::Crm::Objects::LineItems.new(client: client)
          @listings = HubspotSDK::Resources::Crm::Objects::Listings.new(client: client)
          @meetings = HubspotSDK::Resources::Crm::Objects::Meetings.new(client: client)
          @notes = HubspotSDK::Resources::Crm::Objects::Notes.new(client: client)
          @objects = HubspotSDK::Resources::Crm::Objects::Objects.new(client: client)
          @orders = HubspotSDK::Resources::Crm::Objects::Orders.new(client: client)
          @partner_clients = HubspotSDK::Resources::Crm::Objects::PartnerClients.new(client: client)
          @partner_services = HubspotSDK::Resources::Crm::Objects::PartnerServices.new(client: client)
          @postal_mail = HubspotSDK::Resources::Crm::Objects::PostalMail.new(client: client)
          @products = HubspotSDK::Resources::Crm::Objects::Products.new(client: client)
          @quotes = HubspotSDK::Resources::Crm::Objects::Quotes.new(client: client)
          @schemas = HubspotSDK::Resources::Crm::Objects::Schemas.new(client: client)
          @services = HubspotSDK::Resources::Crm::Objects::Services.new(client: client)
          @tasks = HubspotSDK::Resources::Crm::Objects::Tasks.new(client: client)
          @taxes = HubspotSDK::Resources::Crm::Objects::Taxes.new(client: client)
          @tickets = HubspotSDK::Resources::Crm::Objects::Tickets.new(client: client)
        end
      end
    end
  end
end
