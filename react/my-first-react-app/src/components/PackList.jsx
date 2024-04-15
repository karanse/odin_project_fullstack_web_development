function Item({ name, isPacked}) {
  return <li
  className="item">
    {isPacked ? name + ' ✔' : name}
  </li>

}


export default function PackList() {
  return (
    <section>
      <h1>Sally&apos;s Packing List</h1>
      <ul>
        <Item
          isPacked={true}
          name="Space suit"/>
          <Item
          isPacked={true}
          name="Helmet"/>
          <Item
          isPacked={false}
          name="photo machine"/>
      </ul>
    </section>
  )
};
