require 'spec_helper'

describe Player do

  context "when already played" do
    it "has a list of played games" do
      game = FactoryGirl.create :finished_game
      game.player1.played.should include game
    end
  end

  context "when never played" do
    it "is not playing" do
      player = FactoryGirl.create :player
      should_not be player.playing?
    end
  end

end