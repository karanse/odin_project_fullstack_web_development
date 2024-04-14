
function Avatar() {
  const avartar = 'https://i.imgur.com/7vQD0fPs.jpg';
  const description = 'Gregorio Y. Zara';
  return (
    <img
    className="avatar"
    src={avartar}
    alt={description }
    />
  )
}

export default Avatar
