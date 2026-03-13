 Traveller-700-Quires-
 Dataset Schema Reference
Table Name: Traveller

Columns:
**Trip ID,   Destination,   Start date,   End date,   Duration (days), 
Traveler name,  Traveler age,  Traveler gender,   Traveler nationality,   Accommodation type, 
Accommodation cost,   Transportation type,   Transportation cost.**

Schema Overview
Identifiers & Logistics:

Trip ID: A unique numerical identifier for each recorded journey.

Destination: The location visited, typically formatted as "City, Country."
Start date / End date: The temporal boundaries of the trip.
Duration (days): The total length of the stay, calculated as the difference between the end and start dates.
Traveler Demographics:
Traveler name: The full name of the individual.
Traveler age: The age of the traveler (useful for age-group analysis).
Traveler gender: Biological sex or gender identity (Male/Female).
Traveler nationality: The country of citizenship for the traveler.
Financial & Service Details:
Accommodation type: Where the traveler stayed (e.g., Hotel, Resort, Airbnb, Villa, Hostel).
Accommodation cost: The price paid for lodging. 
^ Note: This field often contains mixed formats like symbols ($), commas, or currency codes (USD).

Transportation type: The primary mode of travel (e.g., Flight, Train, Plane, Airplane).
Transportation cost: The price paid for the transit to or within the destination.
