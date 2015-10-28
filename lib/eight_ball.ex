defmodule EightBall do
  @answers [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ]

  @validation_regex ~r/\?$/

  def ask(question) do 
    validate!(question)
    @answers
      |> Enum.take_random(1)
      |> List.first
  end

  defp validate!(question) when is_binary(question) do
    unless String.strip(question) =~ @validation_regex, do:
      throw "Ask a question!"
  end

  defp validate!(question) do
    throw "What is #{question}?"
  end

end

