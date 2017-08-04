class Slogan
  def self.generate(product)
    data = File.readlines('data.csv')
    s = data[rand(data.length)]
    s.gsub('Copra', product).strip
  end
end
