# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        # @return [HubSpotSDK::Resources::Crm::Objects::Calls]
        attr_reader :calls

        # @return [HubSpotSDK::Resources::Crm::Objects::Carts]
        attr_reader :carts

        # @return [HubSpotSDK::Resources::Crm::Objects::CommercePayments]
        attr_reader :commerce_payments

        # @return [HubSpotSDK::Resources::Crm::Objects::Communications]
        attr_reader :communications

        # @return [HubSpotSDK::Resources::Crm::Objects::Companies]
        attr_reader :companies

        # @return [HubSpotSDK::Resources::Crm::Objects::Contacts]
        attr_reader :contacts

        # @return [HubSpotSDK::Resources::Crm::Objects::Contracts]
        attr_reader :contracts

        # @return [HubSpotSDK::Resources::Crm::Objects::Courses]
        attr_reader :courses

        # @return [HubSpotSDK::Resources::Crm::Objects::Custom]
        attr_reader :custom

        # @return [HubSpotSDK::Resources::Crm::Objects::Deals]
        attr_reader :deals

        # @return [HubSpotSDK::Resources::Crm::Objects::Discounts]
        attr_reader :discounts

        # @return [HubSpotSDK::Resources::Crm::Objects::Emails]
        attr_reader :emails

        # @return [HubSpotSDK::Resources::Crm::Objects::FeedbackSubmissions]
        attr_reader :feedback_submissions

        # @return [HubSpotSDK::Resources::Crm::Objects::Fees]
        attr_reader :fees

        # @return [HubSpotSDK::Resources::Crm::Objects::GenericObjects]
        attr_reader :generic_objects

        # @return [HubSpotSDK::Resources::Crm::Objects::GoalTargets]
        attr_reader :goal_targets

        # @return [HubSpotSDK::Resources::Crm::Objects::Invoices]
        attr_reader :invoices

        # @return [HubSpotSDK::Resources::Crm::Objects::Leads]
        attr_reader :leads

        # @return [HubSpotSDK::Resources::Crm::Objects::LineItems]
        attr_reader :line_items

        # @return [HubSpotSDK::Resources::Crm::Objects::Listings]
        attr_reader :listings

        # @return [HubSpotSDK::Resources::Crm::Objects::Meetings]
        attr_reader :meetings

        # @return [HubSpotSDK::Resources::Crm::Objects::Notes]
        attr_reader :notes

        # @return [HubSpotSDK::Resources::Crm::Objects::Orders]
        attr_reader :orders

        # @return [HubSpotSDK::Resources::Crm::Objects::PartnerClients]
        attr_reader :partner_clients

        # @return [HubSpotSDK::Resources::Crm::Objects::PartnerServices]
        attr_reader :partner_services

        # @return [HubSpotSDK::Resources::Crm::Objects::PostalMail]
        attr_reader :postal_mail

        # @return [HubSpotSDK::Resources::Crm::Objects::Products]
        attr_reader :products

        # @return [HubSpotSDK::Resources::Crm::Objects::Projects]
        attr_reader :projects

        # @return [HubSpotSDK::Resources::Crm::Objects::Quotes]
        attr_reader :quotes

        # @return [HubSpotSDK::Resources::Crm::Objects::Services]
        attr_reader :services

        # @return [HubSpotSDK::Resources::Crm::Objects::Subscriptions]
        attr_reader :subscriptions

        # @return [HubSpotSDK::Resources::Crm::Objects::Tasks]
        attr_reader :tasks

        # @return [HubSpotSDK::Resources::Crm::Objects::Taxes]
        attr_reader :taxes

        # @return [HubSpotSDK::Resources::Crm::Objects::Tickets]
        attr_reader :tickets

        # @return [HubSpotSDK::Resources::Crm::Objects::Users]
        attr_reader :users

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @calls = HubSpotSDK::Resources::Crm::Objects::Calls.new(client: client)
          @carts = HubSpotSDK::Resources::Crm::Objects::Carts.new(client: client)
          @commerce_payments = HubSpotSDK::Resources::Crm::Objects::CommercePayments.new(client: client)
          @communications = HubSpotSDK::Resources::Crm::Objects::Communications.new(client: client)
          @companies = HubSpotSDK::Resources::Crm::Objects::Companies.new(client: client)
          @contacts = HubSpotSDK::Resources::Crm::Objects::Contacts.new(client: client)
          @contracts = HubSpotSDK::Resources::Crm::Objects::Contracts.new(client: client)
          @courses = HubSpotSDK::Resources::Crm::Objects::Courses.new(client: client)
          @custom = HubSpotSDK::Resources::Crm::Objects::Custom.new(client: client)
          @deals = HubSpotSDK::Resources::Crm::Objects::Deals.new(client: client)
          @discounts = HubSpotSDK::Resources::Crm::Objects::Discounts.new(client: client)
          @emails = HubSpotSDK::Resources::Crm::Objects::Emails.new(client: client)
          @feedback_submissions = HubSpotSDK::Resources::Crm::Objects::FeedbackSubmissions.new(client: client)
          @fees = HubSpotSDK::Resources::Crm::Objects::Fees.new(client: client)
          @generic_objects = HubSpotSDK::Resources::Crm::Objects::GenericObjects.new(client: client)
          @goal_targets = HubSpotSDK::Resources::Crm::Objects::GoalTargets.new(client: client)
          @invoices = HubSpotSDK::Resources::Crm::Objects::Invoices.new(client: client)
          @leads = HubSpotSDK::Resources::Crm::Objects::Leads.new(client: client)
          @line_items = HubSpotSDK::Resources::Crm::Objects::LineItems.new(client: client)
          @listings = HubSpotSDK::Resources::Crm::Objects::Listings.new(client: client)
          @meetings = HubSpotSDK::Resources::Crm::Objects::Meetings.new(client: client)
          @notes = HubSpotSDK::Resources::Crm::Objects::Notes.new(client: client)
          @orders = HubSpotSDK::Resources::Crm::Objects::Orders.new(client: client)
          @partner_clients = HubSpotSDK::Resources::Crm::Objects::PartnerClients.new(client: client)
          @partner_services = HubSpotSDK::Resources::Crm::Objects::PartnerServices.new(client: client)
          @postal_mail = HubSpotSDK::Resources::Crm::Objects::PostalMail.new(client: client)
          @products = HubSpotSDK::Resources::Crm::Objects::Products.new(client: client)
          @projects = HubSpotSDK::Resources::Crm::Objects::Projects.new(client: client)
          @quotes = HubSpotSDK::Resources::Crm::Objects::Quotes.new(client: client)
          @services = HubSpotSDK::Resources::Crm::Objects::Services.new(client: client)
          @subscriptions = HubSpotSDK::Resources::Crm::Objects::Subscriptions.new(client: client)
          @tasks = HubSpotSDK::Resources::Crm::Objects::Tasks.new(client: client)
          @taxes = HubSpotSDK::Resources::Crm::Objects::Taxes.new(client: client)
          @tickets = HubSpotSDK::Resources::Crm::Objects::Tickets.new(client: client)
          @users = HubSpotSDK::Resources::Crm::Objects::Users.new(client: client)
        end
      end
    end
  end
end
