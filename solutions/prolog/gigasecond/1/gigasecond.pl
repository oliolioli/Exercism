add_gigasecond(Date, GigasecondDate) :-
    date_time_stamp(Date, TS0),
    TS1 is TS0 + 1000000000,
    stamp_date_time(TS1, GigasecondDate, 'UTC').



add_gigasecond(date(2015,1,24,22,0,0,0,'UTC',-), GigasecondResultDate).