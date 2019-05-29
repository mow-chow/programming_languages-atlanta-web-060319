languages = {
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}

def reformat_languages(languages)
new_languages = {}
languages.each do |type, language|
  language.each do |name, attributes|
  new_languages[name] ||= attributes
  new_languages[name][:style]=[]
  new_languages[name][:style]<<type
end
end
new_languages
end
