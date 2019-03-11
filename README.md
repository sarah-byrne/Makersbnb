MakersBnB specification
-----------------------
We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

Headline specifications
-----------------------
```
Any signed-up user can list a new space.
Users can list multiple spaces.
Users should be able to name their space, provide a short description of the space, and a price per night.
Users should be able to offer a range of dates where their space is available.
Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
Nights for which a space has already been booked should not be available for users to book that space.
Until a user has confirmed a booking request, that space can still be booked for that night.
```

Nice-to-haves
--------------
```
Users should receive an email whenever one of the following happens:
They sign up
They create a space
They update a space
A user requests to book their space
They confirm a request
They request to book a space
Their request to book a space is confirmed
Their request to book a space is denied
Users should receive a text message to a provided number whenever one of the following happens:
A user requests to book their space
Their request to book a space is confirmed
Their request to book a space is denied
A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space
Basic payment implementation though Stripe.
```

User stories
------------
```
As a new user
So I can use the site
I want to be able to sign up

As a signed up user
So I can rent out my space
I want to list my space

As a signed up user
So I can rent out my space
I want to list multiple spaces

As a signed up user
So people can identify my space
I want to name my space

As a signed up user
So I can best present my space
I want to provide a short description for my space

As a signed up user
So I know how much to charge people
I want to list a price per night

As a host
So people know when I'm offering my space
I want to give a range of dates

As a guest
So I can rent a space
I want to request to hire a space for one night

As a host
So I can know exactly when I'm renting out a space
I want to approve a booking

As a host
So there aren't double bookings
I want my space to be marked unavailable on booked dates

As a host
So I can choose the guest
I want spaces to still be bookable until I've confirmed a booking
```
