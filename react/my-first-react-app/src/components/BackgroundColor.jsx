import { useState } from "react";

const COLORS = ["pink", "green", "blue", "yellow", "purple"];

export default function BackgroundColor() {
  const [backgroundColor, setBackgroundColor] = useState(COLORS[0]);
  const onButtonClick = (color) => () => {
    setBackgroundColor(color);
    }
  return (
    <div
      className="Background"
      style={{
        backgroundColor,
      }}
      >
        {COLORS.map((color) => (
          <button
            type="button"
            key={color}
            onClick={onButtonClick(color)}
            className={backgroundColor === color ? "selcted" : ""}
          >
            {color}
          </button>
        ))}
      </div>
  )
}
