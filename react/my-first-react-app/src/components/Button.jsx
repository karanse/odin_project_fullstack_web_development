// export default  function Button(props) {
//   const buttonStyle = {
//     color: props.color,
//     fontSize: props.fontSize + 'px'
//   };
//   return (
//   <button style={buttonStyle}>{props.text}</button>
//   );
// }


// Prop desctructiong

// export default  function Button({ text, color, fontSize}) {
//   const buttonStyle = {
//     color: color,
//     fontSize: fontSize + 'px'
//   };
//   return (
//   <button style={buttonStyle}>{text}</button>
//   );
// }

// Button.defaultProps = {
//   text: "Click ME!",
//   color: "blue",
//   fontSize: 12
// };


// Functions as props

export default  function Button({ text = "Click Me!", color = "green", fontSize = 12, handleClick}) {
  const buttonStyle = {
    color: color,
    fontSize: fontSize + 'px'
  };
  return (
  <button style={buttonStyle} onClick={handleClick}>
    {text}
   </button>
  );
}
