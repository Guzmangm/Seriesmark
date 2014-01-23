module SeriesHelper

  def seriesRow(series)
    html='<div class="seriesDivRow">'
    html << '<div class="seriesDivHeader">'
	html << '<input type="hidden" value="' + series.id.to_s + '" />'
    html << '<img src="/img/favorite.png" alt="Uncheck favorite" />' if series.favorite
	html << '<img src="/img/noFavorite.png" alt="Check favorite" />' unless series.favorite
	html << '<h2>' + series.title + '</h2>'
	html << '</div>'
	html << '<div class="seriesDivInfo" style="display:none;">'
	html << '<img alt="Series image" src="/photo_store/' + series.id.to_s + '.' + series.extension + '" />'
	html << '<h3>' + series.title + '</h3>'
	html << '<h3>' + series.year.to_s + '</h3>' if series.year
	html << '<h3>' + series.country.name + '</h3>' if series.country
	html << '<h3>' + series.genre.title + '</h3>'
	html << '<h3>' + series.seasons.count.to_s + ' seasons</h3>'
	html << '</div>'
	html << '</div>'
    return html.html_safe
   end

end
