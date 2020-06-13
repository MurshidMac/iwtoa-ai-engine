import React, { Component } from 'react';
import TopNav, { asNavLinkAnchor, asTopNavAnchor } from '@govuk-react/top-nav';
import { Link, NavLink } from 'react-router-dom';
import CrownIcon from '@govuk-react/icon-crown';
import { Button } from 'govuk-react'
import { withRouter } from 'react-router-dom'

class Header extends Component {
    logout() {
        this.props.history.push('/')
        this.props.keycloak.logout();
    }

    render() {
        return (
            <TopNav company={CompanyLink} serviceTitle={ServiceTitleLink}>
                <NavAnchor to="/">Processes</NavAnchor>
                <NavAnchor to="/about">About</NavAnchor>
                <NavAnchor to="/contact">Contact</NavAnchor>
                <div className="logout">
                    <Button onClick={() => this.logout()}>Logout</Button>
                </div>
            </TopNav>


        )
    }
}

const LogoLink = asTopNavAnchor(Link);
const LinkNav = asNavLinkAnchor(Link);
const NavAnchor = asNavLinkAnchor(NavLink);

const reactRouterLink = '/';

const CompanyLink = (
    <LogoLink to={reactRouterLink}>
        <TopNav.IconTitle icon={<CrownIcon width="36" height="32" />}>GOV.UK</TopNav.IconTitle>
    </LogoLink>
);

const ServiceTitleLink = (
    <LinkNav to={reactRouterLink}>
        DPA Demo 1
  </LinkNav>
);

export default withRouter(Header);