

export default function Animal() {
  const animals = ["Lion", "Cow", "Snake", "Lizard"];

  return (
    <div>
      <h1>Animals:</h1>
      <ul>
        {animals.map((animal) => {
          return <li key={animal}>{animal}</li>
        })}
      </ul>

    </div>
  )
}
