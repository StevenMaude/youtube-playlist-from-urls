# youtube-playlist-from-urls

## What is it?

A shell script to generate a YouTube playlist URL from a list of YouTube
video URLs. This playlist URL can be used without being logged in at
all, allowing convenient sharing.

(Unfortunately, YouTube doesn't give you an easy direct way to create
playlists if you're not logged in to the site.)

Licensed under GPLv3 (see COPYING).

## Usage

```sh
./ytp.sh <your_playlist_file>
```

A playlist file is just a list of YouTube URLs of the form:

```
https://www.youtube.com/watch?v=...
https://www.youtube.com/watch?v=...
```

It's not very smart; it's just splitting on the `=` to get the video ID.

## Limitations

Doesn't support other types of URLs, e.g. `youtu.be/...` or
`https://www.youtube.com/embed...`

...Yet. (I may make this less stupid in future.)
