## Test Input

* Title: Fell in Love With a Girl
* Artist: White Stripes
* Album: White Blood Cells
* Year: 2001
* Url: https://www.youtube.com/watch?v=fTH71AAxXmM


## Form

```html
<div class="row">
  <div class="medium-8 medium-centered large-6 large-centered columns">

    <h3 class="text-center">Song</h3>

    <form action="/songs" method="post">
      <label for="title">
        Title
      </label>
      <input class="input-group-field" id="title" type="text" />

      <label for="artist">
        Artist
      </label>
      <input class="input-group-field" id="artist" type="text" />

      <label for="album">
        Album
      </label>
      <input class="input-group-field" id="album" type="text" />

      <label for="year">
        Year
      </label>
      <input class="input-group-field" id="year" type="text" />

      <label for="url">
        URL
      </label>
      <input class="input-group-field" id="url" type="text" />

      <button type="submit" class="button expanded">Submit</button>
    </form>

  </div>
</div>
```
