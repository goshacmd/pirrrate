module Pirrrate
  # Ordering values (asc-desc).
  ORDERS = {
    name: [1, 2],
    uploaded: [3, 4],
    size: [5, 6],
    seeders: [7, 8],
    leechers: [9, 10],
    uploader: [11, 12],
    type: [13, 14]
  }

  # Category values.
  CATEGORIES = {
    all: 0,
    audio: {
      all: 100,
      music: 101,
      audio_books: 102,
      sound_clips: 103,
      flac: 104,
      other: 199
    },
    video: {
      all: 200,
      movies: 201,
      movies_dvdr: 202,
      music_videos: 203,
      movie_clips: 204,
      tv_shows: 205,
      handheld: 206,
      hd_movies: 207,
      hd_tv_shows: 208,
      three_dimensions: 209,
      other: 299
    },
    applications: {
      all: 300,
      windows: 301,
      mac: 302,
      unix: 303,
      handheld: 304,
      ios: 305,
      android: 206,
      other: 299
    },
    games: {
      all: 400,
      pc: 401,
      mac: 402,
      psx: 403,
      xbox360: 404,
      wii: 405,
      handheld: 406,
      ios: 407,
      android: 408,
      other: 499
    },
    other: {
      ebooks: 601,
      comics: 602,
      pictures: 603,
      covers: 604,
      physibles: 605,
      other: 699
    }
  }
end
