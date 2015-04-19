class Team < ActiveRecord::Base
  belongs_to :mbracket

  def to_s
    name
  end
  def self.ranked(r)
     Team.find_by(:rank => r)
  end

  scope :rank1,  -> {find_by rank:  '1'}
  scope :rank2,  -> {find_by rank:  '2'}
  scope :rank3,  -> {find_by rank:  '3'}
  scope :rank4,  -> {find_by rank:  '4'}
  scope :rank5,  -> {find_by rank:  '5'}
  scope :rank6,  -> {find_by rank:  '6'}
  scope :rank7,  -> {find_by rank:  '7'}
  scope :rank8,  -> {find_by rank:  '8'}
  scope :rank9,  -> {find_by rank:  '9'}
  scope :rank10, -> {find_by rank: '10'}
  scope :rank11, -> {find_by rank: '11'}
  scope :rank12, -> {find_by rank: '12'}
  scope :rank13, -> {find_by rank: '13'}
  scope :rank14, -> {find_by rank: '14'}
  scope :rank15, -> {find_by rank: '15'}
  scope :rank16, -> {find_by rank: '16'}

end
