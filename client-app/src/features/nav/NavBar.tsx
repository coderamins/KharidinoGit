import React from "react";
import { Button, Container, Menu } from "semantic-ui-react";

const NavBar = () => {
  return (
    <Menu fixed="top" inverted>
      <Container>
        <Menu.Item header>
          <img src="/assets/logo.png" alt="logo" />
          مدیریت محصولات سایپا
        </Menu.Item>
        <Menu.Item name="Activities" />
        <Menu.Item >
            <Button positive content='ایجاد محصول جدید'/>
        </Menu.Item>
      </Container>
    </Menu>
  );
};

export default NavBar;
