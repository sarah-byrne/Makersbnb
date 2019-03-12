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

As a new user<br>
So I can use the site<br>
I want to be able to sign up<br>
<br>
<span style="color:blue">
As a signed up user<br>
So I can rent out my space<br>
I want to list my space<br>
</span>
<br>
As a signed up user<br>
So I can rent out my space<br>
I want to list multiple spaces<br>
<br>
<span style="color:blue">
As a signed up user<br>
So people can identify my space<br>
I want to name my space<br>
<br>
As a signed up user<br>
So I can best present my space<br>
I want to provide a short description for my space<br>
<br>
As a signed up user<br>
So I know how much to charge people<br>
I want to list a price per night<br>
</span>
<br>
As a host<br>
So people know when I'm offering my space<br>
I want to give a range of dates<br>
<br>
<span style="color:blue">
As a host<br>
So people know when I'm offering my space<br>
I want to give a single date<br>
<br>
As a guest<br>
So I can rent a space<br>
I want to request to hire a space for one night<br>
</span>
<br>
As a host<br>
So I can know exactly when I'm renting out a space<br>
I want to approve a booking<br>
<br>
<span style="color:blue">
As a host<br>
So there aren't double bookings<br>
I want my space to be marked unavailable on booked dates<br>
</span>
<br>
As a host<br>
So I can choose the guest<br>
I want spaces to still be bookable until I've confirmed a booking<br>

