# Oystercard Challenge

## Step 4 - User Story 1
In order to use public transport
As a customer
I want money on my card

Object = Oystercard
Message = 'want money' --> balance
oystercard.balance - balance of 0 by default

## Step 5 - User Story 2
In order to keep using public transport
As a customer
I want to add money to my card

balance += value

## Step 6 - User Story 3
In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

Raise error if balance exceeds £90.

## Step 7 - User Story 4
In order to pay for my journey
As a customer
I need my fare deducted from my card

oystercard.deduct(value)

## Step 8 - User Story 5
In order to get through the barriers.
As a customer
I need to touch in and out.

oystercard.touch_in
oystercard.touch_out

## Step 9 - User Story 6
In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

Touch_in fails if balance is <£1

## Step 10 - User Story 7
In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card

Deduct method called when oystercard.touch_out
