module SeriesHelper

  def seriesRow(series)
    html='<div class="seriesDivRow">'
    html << '<div class="seriesDivHeader">'
	html << '<input type="hidden" value="' + series.id.to_s + '" />'
	if series.favorite
		html << '<img src="/img/favorite.png" alt="Uncheck favorite" />' 
	else
		html << '<img src="/img/noFavorite.png" alt="Check favorite" />'
	end
	html << '<h2>' + series.title + '</h2>'
	html << '<span>Pending episodes: ' + series.unseen_episodes.count.to_s + ' / ' + series.episodes.count.to_s + '</span>'
	html << '</div>'
	html << '<div class="seriesDivInfo" style="display:none;">'
	if series.extension
		html << '<img alt="Series image" src="/photo_store/' + series.id.to_s + '.' + series.extension + '" />'
	else
		html << '<img alt="No image" src="/photo_store/0.png" />'
	end
	html << '<div>'
	html << '<h3>' + series.title + '</h3>'
	html << '<h3>' + series.year.to_s + '</h3>' if series.year
	html << '<h3>' + series.country.name + '</h3>' if series.country
	html << '<h3>' + series.genre.title + '</h3>'
	html << '<h3>' + series.seasons.count.to_s + ' seasons</h3>'
	html << '</div>'
	html << '<div class="links">'
	html << '<a class="button" href="' + edit_series_path(series) + '">Edit</a>'
	html << link_to('Destroy', series_path(series), method: :delete, data: { confirm: 'Are you sure?' }, class: 'button')
	html << '</div>'
	html << '</div>'
	html << '</div>'
    return html.html_safe
   end

end