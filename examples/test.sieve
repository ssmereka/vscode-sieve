## Example Sieve Script: Demonstrates All Syntax Elements

# This is a single-line comment
require ["fileinto", "reject", "vacation", "envelope", "regex", "relational", "comparator-i;ascii-numeric"];

# Set a variable
set "vacationMessage" "I am currently out of the office and will reply to your email when I return.";

if header :contains "subject" "urgent" {
    # File emails with "urgent" in the subject to the "Urgent" folder
    fileinto "Urgent";
    stop; # Stop processing here
} elsif address :is "from" "boss@example.com" {
    # File emails from a specific sender to a "Work" folder
    fileinto "Work";
} else {
    # Default action: keep in the inbox
    keep;
}

# Block comments using /* ... */
if size :over 5M { /* Check for messages over 5 MB */
    reject "Message size exceeds the limit."; /* Reject the message */
}

# Test for the envelope recipient
if envelope :all :comparator "i;ascii-casemap" :is "to" "newsletter@example.com" {
    discard; # Discard newsletters
}

# Using regex match
if header :regex "subject" ".*[Ff]ree.*" {
    discard; # Discard emails containing "free" in the subject
}

# Using relational test and numeric comparator
if header :value "ge" :comparator "i;ascii-numeric" "X-Spam-Level" "5" {
    fileinto "Spam"; # File high spam score emails into "Spam" folder
}

# Vacation auto-reply
vacation :days 7 :addresses ["me@example.com"] text:
Hello,

I am currently out of the office and will get back to you as soon as possible.

Best regards,
John Doe
.
;

# Using nested tests
if anyof (header :contains "subject" "Meeting", address :is "from" "team@example.com") {
    fileinto "Meetings"; # File related emails into "Meetings"
}

# Example of a block comment
/* 
This is a block comment that can span
multiple lines and is ignored by the interpreter.
*/
