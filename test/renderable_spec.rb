require 'ruby2d'

RSpec.describe Ruby2D::Renderable do

  it "allows colors to be set on objects" do
    quad = Quad.new

    quad.color = 'red'
    expect(quad.color.r).to eq(1)

    quad.color = [0.9, 0.8, 0.7, 0.6]
    expect(quad.color.r).to eq(0.9)
    expect(quad.color.g).to eq(0.8)
    expect(quad.color.b).to eq(0.7)
    expect(quad.color.a).to eq(0.6)

    quad.color.r = 0.1
    quad.color.g = 0.2
    quad.color.b = 0.3
    quad.color.a = 0.4
    expect(quad.color.r).to eq(0.1)
    expect(quad.color.g).to eq(0.2)
    expect(quad.color.b).to eq(0.3)
    expect(quad.color.a).to eq(0.4)

    quad.r = 0.5
    quad.g = 0.6
    quad.b = 0.7
    quad.a = 0.8
    expect(quad.r).to eq(0.5)
    expect(quad.g).to eq(0.6)
    expect(quad.b).to eq(0.7)
    expect(quad.a).to eq(0.8)
  end

  it "allows British English spelling of color (colour)" do
    quad = Quad.new

    quad.colour = 'blue'
    expect(quad.color.r).to eq(0)

    quad.colour = [0.1, 0.2, 0.3, 0.4]
    expect(quad.color.r).to eq(0.1)
    expect(quad.color.g).to eq(0.2)
    expect(quad.color.b).to eq(0.3)
    expect(quad.color.a).to eq(0.4)

    quad.colour.r = 0.9
    quad.colour.g = 0.8
    quad.colour.b = 0.7
    quad.colour.a = 0.6
    expect(quad.colour.r).to eq(0.9)
    expect(quad.colour.g).to eq(0.8)
    expect(quad.colour.b).to eq(0.7)
    expect(quad.colour.a).to eq(0.6)
    expect(quad.color.r).to eq(0.9)
    expect(quad.color.g).to eq(0.8)
    expect(quad.color.b).to eq(0.7)
    expect(quad.color.a).to eq(0.6)
    expect(quad.r).to eq(0.9)
    expect(quad.g).to eq(0.8)
    expect(quad.b).to eq(0.7)
    expect(quad.a).to eq(0.6)
  end

end
