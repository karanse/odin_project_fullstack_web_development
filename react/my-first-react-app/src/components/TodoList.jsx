const baseUrl = "https://i.imgur.com/";
const person = {
  name: 'Gregorio Y. Zara',
  // link: 'https://i.imgur.com/7vQD0fPs.jpg',
  imageId: "7vQD0fP",
  imageSize: "s",
  theme: {
    backgroundColor: 'black',
    color: 'pink'
  }
};

export default function TodoList() {
  return (
    <div style={person.theme}>
      <h1>{person.name}&apos;s Todo List</h1>
      <img
        className="avater"
        src={`${baseUrl}${person.imageId}${person.imageSize}.jpg`}
        alt={person.name} />
      <ul>
      <li>Improve the videophone</li>
        <li>Prepare aeronautics lectures</li>
        <li>Work on the alcohol-fuelled engine</li>
      </ul>
    </div>
  )
}
