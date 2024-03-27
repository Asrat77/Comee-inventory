# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GoodRecieveNotes', type: :request do
  include_examples('request_shared_spec', 'good_recieve_notes', 10)

  let(:valid_attributes) do
    {
      grn_number: Faker::Alphanumeric.alpha(number: 10),
      date_of_receipt: Date.current,
      total_quantity: 10,
      total_amount: 700,
      comments: Faker::Lorem.sentence,
      recieved_condition: Faker::Lorem.word,
      purchase_order_id: create(:purchase_order).id
    }
  end

  let(:invalid_attributes) do
    {
      grn_number: nil
    }
  end

  let(:new_attributes) do
    {
      total_quantity: 20
    }
  end
  describe 'GET /generate_grn' do
    it 'creates a new GoodReceiveNote and calculates total quantity and amount' do
      grn = create(:good_recieve_note)
      received_items = grn.received_items
      total_quantity = received_items.sum(&:quantity_received)
      total_amount = received_items.sum(&:total_price)

      get generate_grn_url(id: grn.id), headers:, as: :json

      result = JSON.parse(response.body)

      expect(result['success']).to be_truthy
      expect(result['data']).not_to be_nil
      expect(result['data']['items']['total_quantity']).to eq(total_quantity)
      expect(result['data']['items']['total_amount']).to eq(total_amount)
    end
    it 'assigns correct total_quantity and total_amount value' do
      grn = create(:good_recieve_note)
      received_items = create_list(:received_item, 3, good_recieve_note_id: grn.id)
      received_items.each do |ri|
        expect(ri.good_recieve_note_id).to eq grn.id
      end
      received_items_quantity = received_items.sum(&:quantity_received)
      received_items_total_amount = received_items.sum(&:total_price)

      get generate_grn_url(id: grn.id), headers:, as: :json
      grn.reload
      expect(grn.total_quantity).to eq received_items_quantity
      expect(grn.total_amount).to eq received_items_total_amount
    end
  end
end
