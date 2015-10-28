# EightBall DJ

Just another Magic Eight Ball

This was an exercise based on [Ilija Eftimov's excellent blog](http://eftimov.net/writing-elixir-library/) which walks you through the process of creating your first Hex package.

## Installation

[Available in Hex](https://hex.pm/packages/eight_ball_dj)! This package can be installed as:

  1. Add eight_ball to your list of dependencies in `mix.exs`:

        def deps do
          [{:eight_ball_dj, "~> 0.0.2"}]
        end

  2. Ensure eight_ball is started before your application:

        def application do
          [applications: [:eight_ball_dj]]
        end
