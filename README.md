# Oystercard Challenge
Week 2 challenge to build a program that will emulate an oystercard required to allow a user to make journeys, top up their card, see their trip history and be penalised if they use their card incorrectly. The project is broken up into 16 steps. 

This challenge will help me towards these goals:
- I grow collaboratively
- I write code that is easy to change
- I can TDD anything 

## Action Plan 

More info about the challenge can be found here: https://github.com/makersacademy/course/tree/master/oystercard.

I paired with a different person each day during this week. If on one day I paired with someone who was a few steps behind me, I was to start from where they got to.

For steps 4 - 10, I planned with the following user stories: 

Step 4 - User Story 1
> In order to use public transport
As a customer
I want money on my card

Object = Oystercard
Message = 'want money' --> balance
oystercard.balance - balance of 0 by default

Step 5 - User Story 2
> In order to keep using public transport
As a customer
I want to add money to my card

balance += value

Step 6 - User Story 3
> In order to protect my money from theft or loss
As a customer
I want a maximum limit (of £90) on my card

Raise error if balance exceeds £90.

Step 7 - User Story 4
> In order to pay for my journey
As a customer
I need my fare deducted from my card

oystercard.deduct(value)

Step 8 - User Story 5
> In order to get through the barriers.
As a customer
I need to touch in and out.

oystercard.touch_in
oystercard.touch_out

Step 9 - User Story 6
> In order to pay for my journey
As a customer
I need to have the minimum amount (£1) for a single journey.

Touch_in fails if balance is <£1

Step 10 - User Story 7
> In order to pay for my journey
As a customer
When my journey is complete, I need the correct amount deducted from my card

Deduct method called when oystercard.touch_out

## Evidence Plan 
> 23.09.19 - Brad Phillips: You had good communication, clear explanation of thought processes and actual coding while driving. You thought through the logic needed to implement user stories into a well-designed system.

> 24.09.19 - Kevin Hanna: You understood new concepts, kept us grounded in the task, spoke your mind and spotted typos / syntax errors like a hawk! You were confident with the code, rarely getting held up trying to work out syntax and the logic of our chosen methods.

> 26.09.19 - Dom Tunstill: You were good at writing the feature tests as well as the unit tests. We got bogged down on edge cases and debugging one particular case. We could have slowed down and thought more about the issue, rather than just changing code. But you were good at testing for the edge cases, debugging errors you found and refactoring by extracting a class. You were very good to work with, I had a great session. 

## Project Status
- On Day 1 of the challenge, I worked through steps 1-9 on [my repo](https://github.com/jessmar94/oystercard_challenge).
- On Day 2 of the challenge, I worked through steps 5-14 on [Kevin's repo](https://github.com/kevindhanna/oystercard).
- On Day 3 of the challenge, I completed steps 9-11 on [Josh's repo](https://github.com/JoshDavies/Oystercard2). 
- On Day 4 of the challenge, I completed step 14 on [Dom's repo](https://github.com/domtunstill/oystercard/blob/master/lib/oystercard.rb).
- On Day 5 of the challenge, mine and Dom's pair partners were off so we worked through step 15 together on his repo. 
