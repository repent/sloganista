class Slogan
  def self.generate(product)
    data = File.readlines(File.dirname(File.expand_path(__FILE__)), 'data.csv')
    s = data[rand(data.length)]
    s.gsub('Copra', product).strip
  end
end
