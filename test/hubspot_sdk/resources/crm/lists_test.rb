# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::ListsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.lists.create(
        name: "Dynamic Association List Example",
        object_type_id: "0-1",
        processing_type: "DYNAMIC"
      )

    assert_pattern do
      response => HubspotSDK::CRM::ListCreateResponse
    end

    assert_pattern do
      response => {
        list: HubspotSDK::CRM::PublicObjectList
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.list

    assert_pattern do
      response => HubspotSDK::CRM::ListsByIDResponse
    end

    assert_pattern do
      response => {
        lists: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicObjectList])
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.delete("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_schedule_conversion
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.delete_schedule_conversion("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.get("listId")

    assert_pattern do
      response => HubspotSDK::CRM::ListFetchResponse
    end

    assert_pattern do
      response => {
        list: HubspotSDK::CRM::PublicObjectList
      }
    end
  end

  def test_get_by_object_type_id_and_name_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.get_by_object_type_id_and_name("listName", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::ListFetchResponse
    end

    assert_pattern do
      response => {
        list: HubspotSDK::CRM::PublicObjectList
      }
    end
  end

  def test_get_schedule_conversion
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.get_schedule_conversion("listId")

    assert_pattern do
      response => HubspotSDK::CRM::PublicListConversionResponse
    end

    assert_pattern do
      response => {
        list_id: String,
        converted_at: Time | nil,
        requested_conversion_time: HubspotSDK::CRM::PublicListConversionResponse::RequestedConversionTime | nil
      }
    end
  end

  def test_restore
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.restore("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_schedule_conversion_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.lists.schedule_conversion(
        "listId",
        conversion_type: :CONVERSION_DATE,
        day: 0,
        month: 0,
        year: 0
      )

    assert_pattern do
      response => HubspotSDK::CRM::PublicListConversionResponse
    end

    assert_pattern do
      response => {
        list_id: String,
        converted_at: Time | nil,
        requested_conversion_time: HubspotSDK::CRM::PublicListConversionResponse::RequestedConversionTime | nil
      }
    end
  end

  def test_search
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.search

    assert_pattern do
      response => HubspotSDK::CRM::ListSearchResponse
    end

    assert_pattern do
      response => {
        has_more: HubspotSDK::Internal::Type::Boolean,
        lists: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicObjectListSearchResult]),
        offset: Integer,
        total: Integer
      }
    end
  end

  def test_update_filters_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.lists.update_filters(
        "listId",
        filter_branch: {
          filterBranches: [
            {
              filterBranches: [
                {
                  filterBranches: [
                    {
                      filterBranches: [
                        {
                          filterBranches: [
                            {
                              eventTypeId: "eventTypeId",
                              filterBranches: [
                                {
                                  filterBranches: [
                                    {
                                      associationCategory: "associationCategory",
                                      associationTypeId: 0,
                                      filterBranches: [
                                        {
                                          filterBranches: [],
                                          filterBranchOperator: "filterBranchOperator",
                                          filterBranchType: :OR,
                                          filters: [
                                            {
                                              filterType: :PROPERTY,
                                              operation: {
                                                includeObjectsWithNoValueSet: true,
                                                operationType: :BOOL,
                                                operator: "operator",
                                                value: true
                                              },
                                              property: "property"
                                            }
                                          ]
                                        }
                                      ],
                                      filterBranchOperator: "filterBranchOperator",
                                      filterBranchType: :ASSOCIATION,
                                      filters: [
                                        {
                                          filterType: :PROPERTY,
                                          operation: {
                                            includeObjectsWithNoValueSet: true,
                                            operationType: :BOOL,
                                            operator: "operator",
                                            value: true
                                          },
                                          property: "property"
                                        }
                                      ],
                                      objectTypeId: "objectTypeId",
                                      operator: "operator"
                                    }
                                  ],
                                  filterBranchOperator: "filterBranchOperator",
                                  filterBranchType: :PROPERTY_ASSOCIATION,
                                  filters: [
                                    {
                                      filterType: :PROPERTY,
                                      operation: {
                                        includeObjectsWithNoValueSet: true,
                                        operationType: :BOOL,
                                        operator: "operator",
                                        value: true
                                      },
                                      property: "property"
                                    }
                                  ],
                                  objectTypeId: "objectTypeId",
                                  operator: "operator",
                                  propertyWithObjectId: "propertyWithObjectId"
                                }
                              ],
                              filterBranchOperator: "filterBranchOperator",
                              filterBranchType: :UNIFIED_EVENTS,
                              filters: [
                                {
                                  filterType: :PROPERTY,
                                  operation: {
                                    includeObjectsWithNoValueSet: true,
                                    operationType: :BOOL,
                                    operator: "operator",
                                    value: true
                                  },
                                  property: "property"
                                }
                              ],
                              operator: :HAS_COMPLETED
                            }
                          ],
                          filterBranchOperator: "filterBranchOperator",
                          filterBranchType: :RESTRICTED,
                          filters: [
                            {
                              filterType: :PROPERTY,
                              operation: {
                                includeObjectsWithNoValueSet: true,
                                operationType: :BOOL,
                                operator: "operator",
                                value: true
                              },
                              property: "property"
                            }
                          ]
                        }
                      ],
                      filterBranchOperator: "filterBranchOperator",
                      filterBranchType: :NOT_ANY,
                      filters: [
                        {
                          filterType: :PROPERTY,
                          operation: {
                            includeObjectsWithNoValueSet: true,
                            operationType: :BOOL,
                            operator: "operator",
                            value: true
                          },
                          property: "property"
                        }
                      ]
                    }
                  ],
                  filterBranchOperator: "filterBranchOperator",
                  filterBranchType: :NOT_ALL,
                  filters: [
                    {
                      filterType: :PROPERTY,
                      operation: {
                        includeObjectsWithNoValueSet: true,
                        operationType: :BOOL,
                        operator: "operator",
                        value: true
                      },
                      property: "property"
                    }
                  ]
                }
              ],
              filterBranchOperator: "filterBranchOperator",
              filterBranchType: :AND,
              filters: [
                {
                  filterType: :PROPERTY,
                  operation: {
                    includeObjectsWithNoValueSet: true,
                    operationType: :BOOL,
                    operator: "IS_GREATER_THAN_OR_EQUAL_TO",
                    value: true
                  },
                  property: "hs_predictivecontactscore_v2"
                },
                {
                  filterType: :PROPERTY,
                  operation: {
                    includeObjectsWithNoValueSet: true,
                    operationType: :BOOL,
                    operator: "IS_UNKNOWN",
                    value: true
                  },
                  property: "engagements_last_meeting_booked_source"
                },
                {
                  acceptedStatuses: ["OPT_IN"],
                  filterType: :EMAIL_SUBSCRIPTION,
                  subscriptionIds: %w[81537745 321981152]
                }
              ]
            }
          ],
          filterBranchOperator: "filterBranchOperator",
          filterBranchType: :OR,
          filters: [
            {
              filterType: :PROPERTY,
              operation: {
                includeObjectsWithNoValueSet: true,
                operationType: :BOOL,
                operator: "operator",
                value: true
              },
              property: "property"
            }
          ]
        }
      )

    assert_pattern do
      response => HubspotSDK::CRM::ListUpdateResponse
    end

    assert_pattern do
      response => {
        updated_list: HubspotSDK::CRM::PublicObjectList | nil
      }
    end
  end

  def test_update_name
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.update_name("listId")

    assert_pattern do
      response => HubspotSDK::CRM::ListUpdateResponse
    end

    assert_pattern do
      response => {
        updated_list: HubspotSDK::CRM::PublicObjectList | nil
      }
    end
  end
end
