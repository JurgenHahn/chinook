### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".
  Genre.find_by(name: 'Hip Hop/Rap')
  #returns genre_id of 17 among other things


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre
  Track.where(genre_id: '17').count
#returns 35

# 2) Find the total amount of time required to listen to all the tracks in the database.
  Track.sum("milliseconds")

#returns 1378575827


# 3a) Find the highest price of any track that has the media type "MPEG audio file".
  MediaType.find_by(name: 'MPEG audio file')
  #returns MediaType id: 1

  Track.where(media_type_id: "1").maximum("unit_price")
#returns '0.99E0'


# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".
  Track.where(media_type_id: "1")
Track.where(unit_price: "0.99E0")
Track.where(media_type_id: "1").where(unit_price: "0.99E0") #.limit(1).first




# 4) Find the 2 oldest artists.
Artist.order(created_at: :asc).limit(2)



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
