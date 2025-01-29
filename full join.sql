SELECT 
    er.competition_year,                           -- Year of the competition
    er.hosting_country,                            -- Hosting country
    er.winning_country_name,                       -- Winning country
    c1.country_language AS winning_country_language,  -- Language of the winning country
    s.song_name,                                  -- Name of the winning song
    s.song_language,                              -- Language of the song
    c2.capital AS winning_country_capital,        -- Capital of the winning country
    si.singer_name AS singer                      -- Singer(s) of the song
FROM 
    eurovision_results er
JOIN 
    countries c1 ON er.winning_country_name = c1.country_name       -- Join for winning country details
JOIN 
    countries c2 ON er.winning_country_name = c2.country_name       -- Join for the winning country's capital
JOIN 
    songs s ON er.song_id = s.song_id                                -- Join for song details
JOIN 
    singers si ON er.singer_id = si.singer_id                       -- Join for singer details
ORDER BY 
    er.competition_year DESC;                                       -- Order by year descending