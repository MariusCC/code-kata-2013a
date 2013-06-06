# State interview mini-project

## Brief

Build a search interface that finds venues (from Foursquare), allowing user to mark some as "favourite", and retrieve those favourites later.

It's up to you to make sensible assumptions (both from product and technical point of view). We can discuss them in the review session.

In terms of the solution:

* it should be either in Ruby or NodeJS, depending on what we told you when you received this project
* it should have a web interface that we can play with in the review session
* for Foursquare API access, it should only use the supplied search method
  * in Ruby, use `FoursquareProxy#search_venues`
  * in NodeJS, use `foursquare-proxy#searchVenues()`
* use this GitHub repo like you would any other project

## Product Requirements

* user should be able to search for venues via the provided proxy and see their details
* user should be able to mark and unmark a venue as a "favourite"
* user should be able to retrieve a list of their favourite venues
* when searching, any venues previously marked as favourite should be indicated as such
* [optional] user should be able to import/export favourites to a file

A very important consideration is:

* it should not store every set of search results locally, to keep data storage to a minimum

Note: don't get bogged down with configuring databases or making the interface pretty. Concentrate more on solving the main problems.
