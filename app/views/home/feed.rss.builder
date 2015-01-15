#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Guille Lopez"
    xml.author "Guille Lopez"
    xml.description "Full-stack developer and designer from Barcelona working in San Francisco."
    xml.link "http://www.guillelopez.com"
    xml.language "en"

    for project in @projects
      xml.item do
        xml.title project.title
        xml.description project.description
        xml.pubDate project.started_at.to_s(:rfc822)
        if project.url
          xml.link project.url
        end
        xml.guid project.id
      end
    end
  end
end