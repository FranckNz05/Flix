$movies = @(
    @{
        name = "rebel_moon"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ui4DrH1cKk2vkHshcUcGt2lKxCm.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/8GnWDLn2AhnmkQ7hlQ9NJUYobSS.jpg"
    },
    @{
        name = "leave_world_behind"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/29rhl1xopxA7JlGVVsf1UHfYPvN.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/jXJxMcVoEuXzym3vFnjqDW4ifo6.jpg"
    },
    @{
        name = "the_killer"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/e7Jvsry47JJQruuezjU2X1Z6J77.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/t5zCBSB5xMDKcDqe91qahCOUYVV.jpg"
    },
    @{
        name = "extraction2"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/9n5e1vXn6zWDtCwvxnQ6tHqb6E4.jpg"
    },
    @{
        name = "luther"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tvX2JjRqbmRhDDz4KLJO3nthxHR.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/eqRvKwTcBvfiAzPpaXKHUB3T9Xt.jpg"
    },
    @{
        name = "heart_of_stone"
        poster = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg"
        backdrop = "https://www.themoviedb.org/t/p/original/xZMpyq3UC4qdQWvb4WrEVJF0Pu0.jpg"
    }
)

foreach ($movie in $movies) {
    $posterPath = "assets/movies/$($movie.name).jpg"
    $backdropPath = "assets/movies/$($movie.name)_backdrop.jpg"
    
    Write-Host "Downloading $($movie.name) images..."
    
    Invoke-WebRequest -Uri $movie.poster -OutFile $posterPath
    Invoke-WebRequest -Uri $movie.backdrop -OutFile $backdropPath
}

Write-Host "All images downloaded successfully!"
