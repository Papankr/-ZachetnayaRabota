require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save new empty image' do
    image = Image.new
    assert_not image.save
  end

  # ****dont see column  image!!******
  # test 'should save new image' do
  #   image = Image.new(title: 'sad', autor: 'mirad@mail.ru',
  #                    image: '1503547569_samye-krasivye-kartinki_xaxa-net.ru-16.jpg')
  # assert image.save
  # end
end
