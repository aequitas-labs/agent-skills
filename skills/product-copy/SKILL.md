---
name: product-copy
description: Write or edit any text a person reads in the product — screens, headings, buttons, labels, errors, empty states, confirmations, emails, texts and notifications. Use whenever you add, change or review a user-facing string, template or message. For PR descriptions, reports, plans, commits or anything else written for engineers, use plain-technical-writing instead.
---

# Product copy

Copy is what a person reads in the product. Write it for that person, not for the team that built the feature. For text written for engineers or other agents, use `plain-technical-writing`.

## Say only what the reader needs to act

- If removing a sentence doesn't change what the reader does next, remove it.
- Say what the reader can do now, not how or why the system works.
- Treat states that look the same to the reader as one state, with one message and one next step.

For example:

- ✗ "You can use any phone number. Once it's verified, you'll join the team."
  ✓ "Enter your phone number to join."
- ✗ "It works once and expires in 7 days."
  ✓ "It expires in 7 days."
- ✗ Separate messages for a used, an expired and a revoked invitation.
  ✓ One message for all three: "This invitation has expired. Please ask the person who invited you to send a new link."

## Write plainly

- Short sentences, common words, active voice. Write it the way you'd say it to a person across a table.
- Call things what the reader calls them, never internal names (tenant, organization, workflow, record, token).
- Address the reader as "you". Name anyone else by their role in the product ("the owner", "the person who invited you"), never by a pronoun: not "he", "she" or "they".
- Cut words that sound machine-written: seamlessly, effortlessly, powerful, unlock, elevate, streamline, leverage, robust, dive in, journey, just, simply.
- Cut filler intros and reassurances: "Don't worry", "Good news!", "We've got you covered", "Here's what happens next".
- No exclamation marks in errors or system messages.

## Keep it short and in shape

- Sentence case. Headlines have no closing period.
- A button says what it does: "Send invite", not "Continue" or "Submit".
- An error says what happened and what to do next, in at most two short sentences. No codes or stack details.
  - ✗ "Error 409: invitation token already consumed."
  - ✓ "This invitation has expired. Please ask the person who invited you to send a new link."
- One idea per sentence. If a screen needs a paragraph, the design probably needs to change.
- An email or text leads with the one thing the reader must do, and says who it's from.

## Check it

Read each string aloud to someone who has never seen the code. If they'd ask "why are you telling me this?", cut it.
