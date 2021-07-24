# OsrsPriceComparator

This is a simple API for comparing real-time OSRS GE prices for sets of profitable flips that my buddy uses to make money.
The API queries the runescape wiki grand exchange latest prices API and based on configured sets of items, an ingredient set and a result set, compares currents prices and maximum profits from flipping.
The API will return the same data regardless of method, headers, body, etc.
The frontend is unindexed somewhere on BrandtHill.com, so if you want to use it 
you can find it or ask me, but the items sets are specific to my friend who requested this, so you can fork this and configure it to your liking if you wish.
See `config/config.exs` for the item sets being compared. 
