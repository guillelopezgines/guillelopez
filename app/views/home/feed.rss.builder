#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0", "xmlns:atom" => "http://www.w3.org/2005/Atom" do
  xml.channel do
    xml.title "Guille Lopez"
    xml.description "Full-stack developer and designer from Barcelona working in San Francisco."
    xml.link "http://www.guillelopez.com"
    xml.language "en"
    xml.lastBuildDate @projects.first.finished_at.to_s(:rfc822)
    xml.tag! 'atom:link', :href => "http://www.guillelopez.com/feed?format=rss", :rel => "self", :type => "application/rss+xml"

    

    for project in @projects
      xml.item do
        xml.title project.title
        xml.description project.description
        xml.pubDate project.started_at.to_s(:rfc822)
        if project.url
          xml.link project.url
          xml.guid project.url + '?id=' + project.id.to_s
        else
          xml.link "http://www.guillelopez.com"
          xml.guid "http://www.guillelopez.com?id=" + project.id.to_s
        end
      end
    end
  end
end